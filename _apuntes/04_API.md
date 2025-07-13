---
layout: default
title: "Api"
nav_order: 4
---
## API

Una API (Interfaz de Programación de Aplicaciones) es un conjunto de definiciones y protocolos que permite la comunicación entre dos aplicaciones de software. En la práctica, facilita que tus programas envíen solicitudes y reciban datos de otros servicios de forma estandarizada. Por ejemplo, cuando una aplicación quiere acceder a datos de un servicio externo (como el clima, un mapa o un modelo de IA), usa la API de ese servicio. 

![alt text]({{ site.baseurl }}/assets/images/04_API.png)

Las API actúan como un “contrato” entre las partes: si envías una solicitud con una estructura definida, recibirás una respuesta predecible. Las APIs web modernas suelen ser remotas (están alojadas en servidores en la nube) y usan el protocolo HTTP para comunicarse. 



Envías peticiones (requests) y recibes respuestas (responses), usualmente en formato JSON (JavaScript Object Notation) o XML. JSON es popular porque es fácil de leer tanto para humanos como para máquinas. Por ejemplo, una respuesta JSON puede verse así:

```json
{
  "user": "Juan",
  "mensaje": "¡Hola!",
  "fecha": "2025-07-11T10:00:00"
}
```

Cada llamada API incluye usualmente: la URL del endpoint, el método HTTP (GET, POST, etc.), los encabezados (headers) con metadatos o claves de autenticación, y opcionalmente un cuerpo (body) con datos JSON.

## HTTP

Hypertext Transfer Protocol is an application protocol for distributed, collaborative, hypermedia information systems. 
HTTP is the foundation of data communication for the World Wide Web
HTTP functions as a request–response protocol in the client–server computing model. 
A web browser, for example, may be the client (asking the question) and an application running on a computer hosting a website may be the server (responding to the question

![alt text]({{ site.baseurl }}/assets/images/04_HTTP.png)

Por "contenido web" nos referimos a los documentos y recursos que se descargan en tu computadora al abrir una página web en el navegador. HTML (Lenguaje de Marcado de Hipertexto) es el tipo más común de contenido web. Las Extensiones de Correo de Internet Multipropósito (MIME) son un estándar de Internet diseñado originalmente para correos electrónicos, que permite soportar diferentes tipos de medios web. HTTP también utiliza MIME.

![alt text]({{ site.baseurl }}/assets/images/04_HTTP2.png)

## Características de REST

Cuando el cliente envía una solicitud a través de una API de RESTful, esta transfiere una representación del estado del recurso requerido a quien lo haya solicitado o al extremo. La información se entrega por medio de HTTP en JSON, HTML, XLT, Python, PHP o texto sin formato. JSON es el formato de archivo más conocido, ya que tanto las máquinas como las personas pueden comprenderlo, y no depende de ningún lenguaje, a pesar de que su nombre indique lo contrario.

Asimismo, es necesario tener en cuenta otro aspecto: los  encabezados  y los parámetros también son importantes en los  métodos HTTP  de la  solicitud, ya que contienen información de  identificación  esencial sobre los metadatos, la autorización, el identificador uniforme de recursos (URI), el almacenamiento en caché, las cookies y otros elementos de la  solicitud. Hay encabezados de solicitud (request)) y  de  respuesta (response), y cada uno tiene sus propios códigos de estado e información de conexión HTTP.

![alt text]({{ site.baseurl }}/assets/images/04_REST.png)

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

2xx Success: The most important status code here is 200 that means everything worked as expected and the resource is found on the SERVER
4xx Client errors: Those are codes for errors on the client side, meaning the client asked for a wrong resource or the one that everybody knows 404 that means resource can't be found on the SERVER.
5xx Server errors: This means the SERVER itself crashed when processing your REQUEST. Maybe due to a bug on server's code or something related.

## SOAP y GraphQL

Ademas de REST, existe el protocolo SOAP que usa XML para mensajes y es muy estricto (requiere ciertas estructuras).
Tambien nos podemos encontrar con una alternativa creada por Facebook que se llama GraphQL.

GraphQL establece como prioridad brindar a los clientes exactamente los datos que solicitan y nada más. Es una alternativa a REST, que en lugar de múltiples endpoints, tiene un único endpoint donde el cliente especifica exactamente qué datos necesita en una consulta (query) estructurada. Esto permite obtener sólo la información solicitada y combinar datos de distintas fuentes en una sola. Un ejemplo de consulta GraphQL sería:

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
