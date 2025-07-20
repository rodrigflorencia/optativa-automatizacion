---
layout: default
title: "Api"
nav_order: 4
---
## API

Una API (Interfaz de Programación de Aplicaciones) es un conjunto de definiciones y protocolos que permite la comunicación entre dos aplicaciones de *software*. En la práctica, facilita que tus programas envíen solicitudes y reciban datos de otros servicios de forma estandarizada. Por ejemplo, cuando una aplicación quiere acceder a datos de un servicio externo (como el clima, un mapa o un modelo de IA), usa la API de ese servicio.

![alt text]({{ site.baseurl }}/assets/images/04_API.png)

Las API actúan como un “contrato” entre las partes: si envías una solicitud con una estructura definida, recibirás una respuesta predecible. Las APIs *web* modernas suelen ser remotas (están alojadas en servidores en la nube) y usan el protocolo HTTP para comunicarse.

Envías peticiones (*requests*) y recibes respuestas (*responses*), usualmente en formato JSON (JavaScript Object Notation) o XML (eXtensible Markup Language). JSON es popular porque es fácil de leer tanto para humanos como para máquinas. Por ejemplo, una respuesta JSON puede verse así:

```json
{
  "user": "Juan",
  "mensaje": "¡Hola!",
  "fecha": "2025-07-11T10:00:00"
}
```

Cada llamada API incluye usualmente: la URL del *endpoint*, el método HTTP (GET, POST, etc.), los encabezados (*headers*) con metadatos o claves de autenticación, y opcionalmente un cuerpo (*body*) con datos JSON.

## HTTP

Por "contenido web" nos referimos a los documentos y recursos que se descargan en tu computadora al abrir una página *web* en el navegador. HTML (Lenguaje de Marcado de Hipertexto) es el tipo más común de contenido *web*.

El Protocolo de Transferencia de Hipertexto (HTTP) es un protocolo de aplicación para sistemas de información distribuidos, colaborativos y de hipermedios. HTTP es la base de la comunicación de datos para la World Wide Web.

HTTP funciona como un protocolo de solicitud-respuesta en el modelo de computación cliente-servidor. Por ejemplo, un navegador *web* puede ser el cliente (haciendo la pregunta) y una aplicación que se ejecuta en una computadora que aloja un sitio *web* puede ser el servidor (respondiendo a la pregunta).

![alt text]({{ site.baseurl }}/assets/images/04_HTTP.png)

Las Extensiones de Correo de Internet Multipropósito (MIME) son un estándar de Internet diseñado originalmente para correos electrónicos, que permite soportar diferentes tipos de medios *web*. HTTP también utiliza MIME.

| Name         | MIME Type        | Common Extensions                | Description                                                                                                                                                                                                                                                                                            |
|--------------|------------------|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| HTML         | text/html        | htm, html                        | HTML defines the structure of a webpage. It is one of the textual content types which is so important that we take it separately from other textual types. HTML contains the main information of a webpage. Without other content types such as CSS and JavaScript, a HTML document merely displays plain texts. The latest standard of HTML is the HTML 5 Specification which features enhanced support for media, interaction, and semantic content. |
| Image        | image/*          | jpg, jpeg, png, gif, webp, svg   | Images are visual elements in the webpage. Most web image types except gif are single frame which is not animated.                                                                                                                                                                                    |
| Audio Media  | audio/*          | mp3, m4a                         | Web audio used to be a popular web media type in the 90’s and 00’s when the Internet bandwidth was narrow for most people. But in the past two decades web video has taken over and become the most popular web media, though some websites are still using web audio for specific purposes.             |
| Video Media  | video/*          | mp4, ogg, webm                   | Video is basically a sequence of images. Different browsers support different extensions of web video. At present, mp4 and ogg are the best supported extensions in mainstream browsers.                                                                                                               |
| CSS          | text/css         | css                              | CSS stands for *Cascading Style Sheets* which defines how web content (HTML, image, and video) is visually presented to the end user.                                                                                                                                                                 |
| Application  | application/*    | js, json, xml, pdf               | Application content types usually require special software or browser extensions to execute or extract the contained information.                                                                                                                                                                     |
| JavaScript   | text/javascript  | js                               | JavaScript is a *client-side programming language* to make web content dynamic and interactive. End users actually download JavaScript files to the client computer when they launch a webpage, which is in contrast to *server-side programming languages* such as php and python that stays on the server. The latest HTML 5 standard supports a lot of the interactions natively in the browser which are previously achieved with JavaScript. |
| Font         | mixed            | svg, ttf, woff, woff2, eot       | Modern web browsers support a collection of basic fonts. For specialized fonts, the font files must be downloaded separately in order for the browser to display the fonts as intended. The font styles and font file locations are defined in CSS.                                                    |

## Características de REST

Cuando el cliente envía una solicitud a través de una API de RESTful, esta transfiere una representación del estado del recurso requerido a quien lo haya solicitado o al extremo. La información se entrega por medio de HTTP en JSON, HTML, XLT, Python, PHP o texto sin formato. JSON es el formato de archivo más conocido, ya que tanto las máquinas como las personas pueden comprenderlo, y no depende de ningún lenguaje, a pesar de que su nombre indique lo contrario.

Asimismo, es necesario tener en cuenta otro aspecto: los  encabezados  y los parámetros también son importantes en los  métodos HTTP  de la  solicitud, ya que contienen información de  identificación  esencial sobre los metadatos, la autorización, el identificador uniforme de recursos (URI), el almacenamiento en caché, las *cookies* y otros elementos de la  solicitud. Hay encabezados de solicitud (*request*)) y  de  respuesta (*response*), y cada uno tiene sus propios códigos de estado e información de conexión HTTP.

| HTTP Method | Collection resource (ej. `https://api.example.com/collection/`)                                                                 | Member resource (ej. `https://api.example.com/collection/item3`)                                                              |
|-------------|----------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
| **GET**     | *Retrieve* the URIs of the member resources of the collection resource in the response body.                                     | *Retrieve* representation of the member resource in the response body.                                                        |
| **POST**    | *Create* a member resource in the collection resource using the instructions in the request body. The URI of the created member resource is *automatically assigned* and returned in the response `Location` header field. | *Create* a member resource in the member resource using the instructions in the request body. The URI of the created member resource is *automatically assigned* and returned in the response `Location` header field. |
| **PUT**     | *Replace* all the representations of the member resources of the collection resource with the representation in the request body, or *create* the collection resource if it does not exist. | *Replace* all the representations of the member resource or *create* the member resource if it does not exist, with the representation in the request body. |
| **PATCH**   | *Update* all the representations of the member resources of the collection resource using the instructions in the request body, or *may create* the collection resource if it does not exist. | *Update* all the representations of the member resource, or *may create* the member resource if it does not exist, using the instructions in the request body. |
| **DELETE**  | *Delete* all the representations of the member resources of the collection resource.                                              | *Delete* all the representations of the member resource.                                                                       |

Para que una API se considere de RESTful, debe tener:

- Arquitectura cliente-servidor: la arquitectura REST está compuesta por clientes, servidores y recursos, y administra las solicitudes con HTTP.
- Sin estado: el contenido de los clientes no se almacena en el servidor entre las solicitudes. En su lugar, la información sobre el estado de la sesión está en el cliente.
- Capacidad de caché: el almacenamiento en caché puede eliminar la necesidad de algunas interacciones cliente-servidor.
- Sistema en capas: las interacciones cliente-servidor pueden estar mediadas por capas adicionales. Estas capas pueden ofrecer funcionalidades adicionales, como equilibrio de carga, cachés compartidos o seguridad.
- Código de demanda (opcional): los servidores pueden extender las funciones de un cliente transfiriendo código ejecutable.
- Interfaz uniforme: esta limitación es fundamental para el diseño de las API de RESTful e incluye 4 aspectos:
-- Identificación de recursos en las solicitudes: los recursos se identifican en las solicitudes y se separan de las representaciones que se devuelven al cliente.
-- Administración de recursos mediante representaciones: los clientes reciben archivos que representan los recursos. Estas representaciones deben tener la información suficiente como para poder ser modificadas o eliminadas.
-- Mensajes autodescriptivos: cada mensaje que se devuelve al cliente contiene la información suficiente para describir cómo debe procesar la información.
-- Hipermedios es el motor del estado de la aplicación: después de acceder a un recurso, el cliente REST debe ser capaz de descubrir mediante hipervínculos todas las otras acciones que están disponibles actualmente.

### Response

- 2xx Éxito: El código de estado más importante aquí es 200, que significa que todo funcionó como se esperaba y el recurso se encontró en el SERVIDOR.
- 4xx Errores del cliente: Estos son códigos para errores del lado del cliente, lo que significa que el cliente solicitó un recurso incorrecto o el famoso 404 que significa que no se pudo encontrar el recurso en el SERVIDOR.
- 5xx Errores del servidor: Esto significa que el SERVIDOR mismo falló al procesar tu SOLICITUD. Tal vez debido a un error en el código del servidor o algo relacionado.

## SOAP y GraphQL

Ademas de REST, existe el protocolo SOAP que usa XML para mensajes y es muy estricto (requiere ciertas estructuras).
Tambien nos podemos encontrar con una alternativa creada por [Facebook](https://www.facebook.com/) que se llama [GraphQL](https://graphql.org/).

GraphQL establece como prioridad brindar a los clientes exactamente los datos que solicitan y nada más. Es una alternativa a REST, que en lugar de múltiples endpoints, tiene un único endpoint donde el cliente especifica exactamente qué datos necesita en una consulta (*query*) estructurada. Esto permite obtener sólo la información solicitada y combinar datos de distintas fuentes en una sola. Un ejemplo de consulta GraphQL sería:

```graphql
query {
  usuario(id: 1) {
    nombre
    publicaciones {
      titulo
      fecha
    }
  }
}
```

Esto pediría al servidor los campos nombre y una lista de publicaciones con sus títulos y fechas.

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