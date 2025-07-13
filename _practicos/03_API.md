---
layout: default
title: "Api"
nav_order: 03
---

## Chatbot con OpenAI API

Imagina que tienes una plataforma educativa con múltiples cursos. Cada día recibes decenas de preguntas repetidas de los estudiantes:

❓ "¿Qué cursos de programación ofrecen?"

❓ "¿Cómo puedo acceder a las clases grabadas?"

❓ "¿Qué nivel de conocimiento necesito para el curso de Python?"

Tú o tu equipo educativo dedican horas cada semana a contestar las mismas preguntas. ¿Y si tuvieras un asistente virtual que pudiera responder al instante, 24/7, con información precisa y actualizada sobre los cursos?

En esta parte de la clase vamos a ver cómo construir un sistema inteligente de forma básica que responde preguntas automáticamente, combinando dos ideas poderosas:

🔹 Chatbots: interfaces conversacionales que entienden lenguaje natural.

🔹 RAG (Retrieval-Augmented Generation): un enfoque moderno que permite que los modelos generativos como ChatGPT respondan con información extraída de tus propios documentos o base de conocimiento.

Para lograr esto, crearemos una pequeña "base de conocimiento" con contenido educativo y la conectaremos a un modelo de lenguaje con capacidad de razonamiento. Así el chatbot no inventará respuestas, sino que buscará primero información relevante y luego generará una respuesta basada en ese contenido.

Es como tener un asistente educativo virtual que conoce todos los cursos y puede guiar a los estudiantes de manera efectiva.

```python
!pip install openai faiss-cpu tiktoken --quiet

from typing import List
from IPython.display import Markdown
from google.colab import userdata

import openai
from openai import OpenAI

api_key = userdata.get('OPEN_AI_KEY')
client = OpenAI(api_key=api_key)


documentos = [
    {
        "id": "faq_cursos_disponibles",
        "texto": """¿Qué cursos de programación ofrecen?
          Actualmente ofrecemos los siguientes cursos:
          - Introducción a Python (Nivel Básico)
          - Machine Learning con Scikit-learn (Intermedio)
          - Desarrollo Web con Django (Avanzado)
          - Análisis de Datos con Pandas (Intermedio)
          - Fundamentos de JavaScript (Básico)
          - Desarrollo de Aplicaciones Móviles (Avanzado)"""
    },
    {
        "id": "faq_acceso_clases",
        "texto": """¿Cómo puedo acceder a las clases grabadas?
Una vez que te inscribas en un curso, tendrás acceso inmediato a nuestra plataforma de aprendizaje. Todas las clases grabadas están disponibles en la sección 'Mis Cursos' de tu perfil. Las grabaciones se publican 24 horas después de cada clase en vivo."""
    },
    {
        "id": "faq_contacto",
        "texto": """¿Cómo puedo contactar con atención al cliente?
Nuestro equipo está disponible de lunes a viernes, de 9:00 a 18:00.
Puedes escribirnos a soporte@miempresa.com o enviarnos un mensaje directo por Instagram (@miempresa)."""
    },
    {
        "id": "faq_requisitos_tecnicos",
        "texto": """¿Qué necesito para el curso de Python?
Para el curso de Introducción a Python solo necesitas tener conocimientos básicos de informática y muchas ganas de aprender. No se requiere experiencia previa en programación. Te recomendamos tener instalado Python 3.8 o superior en tu computadora."""
    },
    {
        "id": "faq_clases_en_vivo",
        "texto": """¿Hay clases en vivo o todo es grabado?
Nuestros cursos incluyen tanto clases en vivo como material grabado. Las clases en vivo se realizan dos veces por semana y quedan grabadas para que puedas verlas después. También tendrás acceso a ejercicios prácticos, foros de discusión y soporte de instructores."""
    }
]

from sklearn.feature_extraction.text import TfidfVectorizer
import numpy as np
import faiss

# Extraer los textos de la lista de documentos
corpus = [doc["texto"] for doc in documentos]

# Vectorizar con TF-IDF
vectorizer = TfidfVectorizer()
doc_vectors = vectorizer.fit_transform(corpus).toarray()

# Crear el índice FAISS
index = faiss.IndexFlatL2(doc_vectors.shape[1])
index.add(np.array(doc_vectors).astype('float32'))

print("Índice FAISS creado con éxito. Número de documentos indexados:", index.ntotal)

def recuperar_contexto(pregunta, k=1):
    pregunta_vec = vectorizer.transform([pregunta]).toarray().astype('float32')
    D, I = index.search(pregunta_vec, k)
    textos = [corpus[i] for i in I[0]]
    return "\n\n".join(textos)

def generar_respuesta(pregunta):
    contexto = recuperar_contexto(pregunta)

    prompt = f"""
      Eres un chatbot de asistencia para una plataforma educativa
      para responder preguntas frecuentes.
      Responde a la siguiente pregunta
      utilizando el contexto proporcionado si es relevante.
      Si no tienes contexto suficiente, dame una respuesta que sea válida.

      Contexto:
      {contexto}

      Pregunta: {pregunta}
      Respuesta:
    """

    respuesta = client.chat.completions.create(
        model="gpt-4o",
        messages=[{"role": "user", "content": prompt}],
        temperature=0.3
    )

    return respuesta.choices[0].message.content

while True:
    pregunta = input("👤 Estudiante: ")
    if pregunta.lower() in ["salir", "exit"]:
        break
    respuesta = generar_respuesta(pregunta)
    display(Markdown("**Chatbot:** " + respuesta))
```

Respuestas

Estudiante: Hola, ¿qué cursos tienen disponibles?
Chatbot: ¡Hola! Actualmente ofrecemos los siguientes cursos:

- Introducción a Python (Nivel Básico)
- Machine Learning con Scikit-learn (Intermedio)
- Desarrollo Web con Django (Avanzado)
- Análisis de Datos con Pandas (Intermedio)
- Fundamentos de JavaScript (Básico)
- Desarrollo de Aplicaciones Móviles (Avanzado)

¿Te interesa algún curso en particular?

👤 Estudiante: ¿Qué necesito para el curso de Python?
Chatbot: Para el curso de Introducción a Python solo necesitas tener conocimientos básicos de informática y muchas ganas de aprender. No se requiere experiencia previa en programación. Te recomendamos tener instalado Python 3.8 o superior en tu computadora. ¿Te gustaría que te envíe más información sobre los requisitos técnicos?

👤 Estudiante: ¿Hay clases en vivo o todo es grabado?
Chatbot: Nuestros cursos incluyen tanto clases en vivo como material grabado. Las clases en vivo se realizan dos veces por semana y quedan grabadas para que puedas verlas después. También tendrás acceso a ejercicios prácticos, foros de discusión y soporte de instructores. ¿Te gustaría conocer los horarios de las próximas clases?

👤 Estudiante: salir

## Ejemplos API + Python

```python

import requests

google = requests.get("https://developers.google.com")
print("Google:", google.status_code)

NBA = response = requests.get("https://api.sportsdata.io/api/nba/fantasy/json/CurrentSeason")
print("NBA:", NBA.status_code)

rotten_tomato = requests.get("http://api.rottentomatoes.com/api/public/v1.0/lists/movies/box_office.json")
print("Rotten Tomatoes:", rotten_tomato.status_code)
```

El formato JSON (JavaScript Object Notation), que es el lenguaje de las APIs RESTful. Es la forma de codificar datos para que sean fácilmente legibles por las máquinas.

```python
google.json()
```

Output

```python
JSONDecodeError: Expecting value: line 1 column 1 (char 0)
```

El problema aquí es que no estamos conectados a una API adecuada que tenga un JSON como punto final, por lo que necesitaremos obtener otra URL válida. Recuerda que el código 200 significa que la conexión se ha establecido, pero no que sea la conexión que necesitas. Probemos con la API de skyscanner.

Nos conectaremos a esta API a través de la web RapidAPI  [RapidAPI](https://rapidapi.com/skyscanner/api/skyscanner-flight-search), por lo que necesitarás crear una cuenta para obtener una Key personalizada (ID de usuario) que te dará acceso a ella. Solo regístrate y obtén tu Key. El "problema" con esta API es que necesitaremos pasar algunos parámetros, incluyendo los headers y la ciudad siguiendo este código:

```python
url = "https://skyscanner-skyscanner-flight-search-v1.p.rapidapi.com/apiservices/autosuggest/v1.0/UK/GBP/en-GB/"

params = {"query":"Tokyo"}

headers = {'x-rapidapi-host': "skyscanner-skyscanner-flight-search-v1.p.rapidapi.com",
                      'x-rapidapi-key': "<introduce your RapidAPI key here>"}

response = requests.get(url, headers = headers, params = params)
response.json()
```

Output:

```python

```

Para conocer los parámetros necesarios para conectarnos correctamente a una API, primero debemos revisar su documentación. Para la siguiente consulta, buscaremos los precios de los vuelos desde San Francisco a la ciudad de Nueva York para el 12/12/2020

```python
url = "https://skyscanner-skyscanner-flight-search-v1.p.rapidapi.com/apiservices/browsequotes/v1.0/US/USD/en-US/SFO-sky/NYCA-sky/2020-12-12"

params = {"inboundpartialdate":"2020-12-12"}

headers = {
    'x-rapidapi-host': "skyscanner-skyscanner-flight-search-v1.p.rapidapi.com",
    'x-rapidapi-key': "<introduce your RapidAPI key here>"}

response = requests.get(url, headers=headers, params=params)

response.json()
```

Chrome DevTools

![alt text]({{ site.baseurl }}/assets/images/04_dev.png)