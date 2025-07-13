---
layout: default
title: "Chatbot"
nav_order: 02
---

## Chatbots

Un **chatbot** es un sistema de software que simula una conversación con un humano. Los chatbots pueden estar basados en reglas simples o en IA (modelos de lenguaje).

*Ejemplo aplicado:* un mercado puede tener un chatbot para consultas frecuentes (horarios, seguimiento de pedidos). A continuación, un ejemplo básico (en Python) de un chatbot por reglas:

```python
def chatbot_respuesta(pregunta):
    pregunta = pregunta.lower()
    if 'hola' in pregunta:
        return '¡Hola! ¿En qué puedo ayudarte?'
    elif 'precio' in pregunta:
        return 'Tenemos varios productos con diferentes precios. ¿Te interesa alguno en particular?'
    elif 'adiós' in pregunta or 'gracias' in pregunta:
        return '¡Gracias a ti! Hasta pronto.'
    else:
        return 'Lo siento, no entiendo tu pregunta. ¿Puedes reformularla?'
```

Prueba del chatbot

```python
print(chatbot_respuesta("¿Cuál es el precio del producto?"))
```

```none
> Salida: Tenemos varios productos con diferentes precios. ¿Te interesa alguno en particular?
```

Con este ejemplo ves cómo condicionamos la respuesta según palabras clave. En la práctica, los chatbots avanzados usan IA (p.ej. GPT) para entender el lenguaje natural y generar respuestas más complejas.

## RAG (Retrieval-Augmented Generation)

RAG combina recuperación de información con generación de texto. Primero busca en una base de datos o documentos la información relevante (recuperación), luego genera la respuesta usando esa información. Esto evita que el modelo “inventa” datos. Ejemplo: el usuario pregunta “¿Qué cursos tienes disponibles?”. El sistema busca en una base de conocimientos los cursos con la palabra “orgánico” y luego genera una respuesta basada en esa lista. En código:

```python
# Base de conocimientos ficticia

base_datos1_ = {
    'cursos': [
        'Introducción a Python - Nivel Básico',
        'Machine Learning con Scikit-learn - Nivel Intermedio',
        'Desarrollo Web con Django - Nivel Avanzado',
        'Análisis de Datos con Pandas - Nivel Intermedio'
    ]
}

def responder_con_rag(pregunta):
    if 'curso' in pregunta.lower() or 'cursos' in pregunta.lower():
        cursos = '\n- '.join(base_datos1_['cursos'])
        return f"Tenemos los siguientes cursos disponibles:\n- {cursos}"
    elif 'básico' in pregunta.lower():
        return "Nuestro curso de nivel básico es: Introducción a Python"
    elif 'avanzado' in pregunta.lower():
        return "Nuestro curso de nivel avanzado es: Desarrollo Web con Django"
    else:
        return "¿Te gustaría información sobre nuestros cursos? Puedo mostrarte lo que ofrecemos."
```

Prueba del flujo RAG

```python
print(responder_con_rag("¿Qué cursos tienes disponibles?"))
```

Este ejemplo ilustrativo muestra el flujo: primero filtramos los datos relevantes, luego completamos la respuesta. En un sistema real, usaríamos técnicas de vectorización (TF-IDF, embeddings) y bibliotecas como FAISS para manejar bases más grandes.

Ejemplo avanzado

```python
class BibliotecaChatbot:
    def __init__(self):
        self.base_datos = {
            'libros': {
                'ciencia_ficcion': [
                    'Dune - Frank Herbert',
                    'Fundación - Isaac Asimov',
                    '1984 - George Orwell'
                ],
                'fantasia': [
                    'El Señor de los Anillos - J.R.R. Tolkien',
                    'Harry Potter - J.K. Rowling',
                    'Juego de Tronos - George R.R. Martin'
                ],
                'no_ficcion': [
                    'Sapiens - Yuval Noah Harari',
                    'El poder del ahora - Eckhart Tolle'
                ]
            },
            'prestamos': {}
        }

    def buscar_libros(self, genero=None):
        if genero and genero in self.base_datos['libros']:
            return self.base_datos['libros'][genero]
        return [libro for sublist in self.base_datos['libros'].values() for libro in sublist]

    def responder(self, pregunta):
        pregunta = pregunta.lower()
        
        if 'hola' in pregunta or 'buenos días' in pregunta:
            return "¡Hola! Soy el asistente de la biblioteca. ¿En qué puedo ayudarte hoy?"
            
        elif 'libros' in pregunta or 'tienes' in pregunta:
            if 'ciencia ficción' in pregunta:
                libros = self.buscar_libros('ciencia_ficcion')
                return "Libros de ciencia ficción disponibles:\n- " + "\n- ".join(libros)
            elif 'fantasía' in pregunta:
                libros = self.buscar_libros('fantasia')
                return "Libros de fantasía disponibles:\n- " + "\n- ".join(libros)
            else:
                return "¿Qué género de libros te interesa? Tenemos ciencia ficción, fantasía y no ficción."
                
        elif 'prestar' in pregunta or 'solicitar' in pregunta:
            return "Para prestar un libro, por favor indícame el título exacto."
            
        elif 'horario' in pregunta or 'abierto' in pregunta:
            return "La biblioteca está abierta de lunes a viernes de 9:00 a 20:00, y sábados de 10:00 a 14:00."
            
        return "Lo siento, no entendí tu pregunta. ¿Podrías reformularla?"
```

Ejemplo de uso

 ```python
if __name__ == "__main__":
    chatbot = BibliotecaChatbot()
    print(chatbot.responder("Hola, ¿qué libros de ciencia ficción tienes?"))
```

## Actividades prácticas

Chatbot básico: Implementa un chatbot simple (como el de arriba) en Python o en un servicio No-Code (p.ej. Chatfuel). Prueba varios saludos y preguntas para ajustar las respuestas.

Experimentar con *prompts*: Ingresa a ChatGPT (o modelo similar) y formula prompts más vagos y más elaborados. Por ejemplo, compara preguntar “Cuenta un chiste” vs. “Cuenta un chiste breve sobre programación”. Observa cómo cambia la respuesta.

Simular RAG: Selecciona tres textos (pueden ser artículos o párrafos) y guárdalos. Luego, planteate una pregunta cuyas palabras clave estén en esos textos. Intenta primero buscar manualmente cuál texto responde mejor, luego genera la respuesta como el código de ejemplo. Analiza la diferencia entre inventar una respuesta vs. basarse en la búsqueda.

Estos ejercicios te ayudarán a comprender la diferencia entre un *chatbot* sencillo y uno potenciado por técnicas de IA y recuperación de información.