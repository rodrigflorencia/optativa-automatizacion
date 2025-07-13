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
