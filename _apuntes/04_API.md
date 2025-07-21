---
layout: default
title: "API"
nav_order: 04
---

<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>API</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
    <style>
        :root {
            --primary: #761a8d;
            --primary-light: #8e3ea5;
            --primary-dark: #5a0f6e;
        }
        body {
            padding-top: 2rem;
            padding-bottom: 2rem;
        }
        .content {
            max-width: 800px;
            margin: 0 auto;
            padding: 0 1rem;
        }
        h1, h2, h3, h4, h5, h6 {
            color: var(--primary);
            margin-top: 2rem;
            margin-bottom: 1rem;
        }
        img {
            max-width: 100%;
            height: auto;
            display: block;
            margin: 2rem auto;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
            margin: 2rem 0;
            border-collapse: collapse;
        }
        th, td {
            padding: 0.75rem;
            border: 1px solid #dee2e6;
            text-align: left;
        }
        th {
            background-color: #f8f9fa;
            font-weight: 600;
        }
        pre {
            background-color: #f8f9fa;
            padding: 1rem;
            border-radius: 4px;
            overflow-x: auto;
        }
        code {
            font-family: 'Courier New', Courier, monospace;
            background-color: #f8f9fa;
            padding: 0.2rem 0.4rem;
            border-radius: 3px;
            font-size: 0.9em;
        }
        blockquote {
            border-left: 4px solid var(--primary);
            padding-left: 1rem;
            margin-left: 0;
            color: #6c757d;
            font-style: italic;
        }
        .btn-back {
            margin-top: 2rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="content">
            <h2 id="api">API</h2>
<p>Una API (Interfaz de Programación de Aplicaciones) es un conjunto de definiciones y protocolos que permite la comunicación entre dos aplicaciones de <em>software</em>. En la práctica, facilita que tus programas envíen solicitudes y reciban datos de otros servicios de forma estandarizada. Por ejemplo, cuando una aplicación quiere acceder a datos de un servicio externo (como el clima, un mapa o un modelo de IA), usa la API de ese servicio.</p>
<p><img alt="alt text" src="{{ site.baseurl }}/assets/images/04_API.png"></p>
<p>Las API actúan como un “contrato” entre las partes: si envías una solicitud con una estructura definida, recibirás una respuesta predecible. Las APIs <em>web</em> modernas suelen ser remotas (están alojadas en servidores en la nube) y usan el protocolo HTTP para comunicarse.</p>
<p>Envías peticiones (<em>requests</em>) y recibes respuestas (<em>responses</em>), usualmente en formato JSON (JavaScript Object Notation) o XML (eXtensible Markup Language). JSON es popular porque es fácil de leer tanto para humanos como para máquinas. Por ejemplo, una respuesta JSON puede verse así:</p>
<div class="codehilite"><pre><span></span><code><span class="p">{</span>
<span class="w">  </span><span class="nt">&quot;user&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;Juan&quot;</span><span class="p">,</span>
<span class="w">  </span><span class="nt">&quot;mensaje&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;¡Hola!&quot;</span><span class="p">,</span>
<span class="w">  </span><span class="nt">&quot;fecha&quot;</span><span class="p">:</span><span class="w"> </span><span class="s2">&quot;2025-07-11T10:00:00&quot;</span>
<span class="p">}</span>
</code></pre></div>

<p>Cada llamada API incluye usualmente: la URL del <em>endpoint</em>, el método HTTP (GET, POST, etc.), los encabezados (<em>headers</em>) con metadatos o claves de autenticación, y opcionalmente un cuerpo (<em>body</em>) con datos JSON.</p>
<h2 id="http">HTTP</h2>
<p>Por "contenido web" nos referimos a los documentos y recursos que se descargan en tu computadora al abrir una página <em>web</em> en el navegador. HTML (Lenguaje de Marcado de Hipertexto) es el tipo más común de contenido <em>web</em>.</p>
<p>El Protocolo de Transferencia de Hipertexto (HTTP) es un protocolo de aplicación para sistemas de información distribuidos, colaborativos y de hipermedios. HTTP es la base de la comunicación de datos para la World Wide Web.</p>
<p>HTTP funciona como un protocolo de solicitud-respuesta en el modelo de computación cliente-servidor. Por ejemplo, un navegador <em>web</em> puede ser el cliente (haciendo la pregunta) y una aplicación que se ejecuta en una computadora que aloja un sitio <em>web</em> puede ser el servidor (respondiendo a la pregunta).</p>
<p><img alt="alt text" src="{{ site.baseurl }}/assets/images/04_HTTP.png"></p>
<p>Las Extensiones de Correo de Internet Multipropósito (MIME) son un estándar de Internet diseñado originalmente para correos electrónicos, que permite soportar diferentes tipos de medios <em>web</em>. HTTP también utiliza MIME.</p>
<table>
<thead>
<tr>
<th>Name</th>
<th>MIME Type</th>
<th>Common Extensions</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr>
<td>HTML</td>
<td>text/html</td>
<td>htm, html</td>
<td>HTML defines the structure of a webpage. It is one of the textual content types which is so important that we take it separately from other textual types. HTML contains the main information of a webpage. Without other content types such as CSS and JavaScript, a HTML document merely displays plain texts. The latest standard of HTML is the HTML 5 Specification which features enhanced support for media, interaction, and semantic content.</td>
</tr>
<tr>
<td>Image</td>
<td>image/*</td>
<td>jpg, jpeg, png, gif, webp, svg</td>
<td>Images are visual elements in the webpage. Most web image types except gif are single frame which is not animated.</td>
</tr>
<tr>
<td>Audio Media</td>
<td>audio/*</td>
<td>mp3, m4a</td>
<td>Web audio used to be a popular web media type in the 90’s and 00’s when the Internet bandwidth was narrow for most people. But in the past two decades web video has taken over and become the most popular web media, though some websites are still using web audio for specific purposes.</td>
</tr>
<tr>
<td>Video Media</td>
<td>video/*</td>
<td>mp4, ogg, webm</td>
<td>Video is basically a sequence of images. Different browsers support different extensions of web video. At present, mp4 and ogg are the best supported extensions in mainstream browsers.</td>
</tr>
<tr>
<td>CSS</td>
<td>text/css</td>
<td>css</td>
<td>CSS stands for <em>Cascading Style Sheets</em> which defines how web content (HTML, image, and video) is visually presented to the end user.</td>
</tr>
<tr>
<td>Application</td>
<td>application/*</td>
<td>js, json, xml, pdf</td>
<td>Application content types usually require special software or browser extensions to execute or extract the contained information.</td>
</tr>
<tr>
<td>JavaScript</td>
<td>text/javascript</td>
<td>js</td>
<td>JavaScript is a <em>client-side programming language</em> to make web content dynamic and interactive. End users actually download JavaScript files to the client computer when they launch a webpage, which is in contrast to <em>server-side programming languages</em> such as php and python that stays on the server. The latest HTML 5 standard supports a lot of the interactions natively in the browser which are previously achieved with JavaScript.</td>
</tr>
<tr>
<td>Font</td>
<td>mixed</td>
<td>svg, ttf, woff, woff2, eot</td>
<td>Modern web browsers support a collection of basic fonts. For specialized fonts, the font files must be downloaded separately in order for the browser to display the fonts as intended. The font styles and font file locations are defined in CSS.</td>
</tr>
</tbody>
</table>
<h2 id="caracteristicas-de-rest">Características de REST</h2>
<p>Cuando el cliente envía una solicitud a través de una API de RESTful, esta transfiere una representación del estado del recurso requerido a quien lo haya solicitado o al extremo. La información se entrega por medio de HTTP en JSON, HTML, XLT, Python, PHP o texto sin formato. JSON es el formato de archivo más conocido, ya que tanto las máquinas como las personas pueden comprenderlo, y no depende de ningún lenguaje, a pesar de que su nombre indique lo contrario.</p>
<p>Asimismo, es necesario tener en cuenta otro aspecto: los  encabezados  y los parámetros también son importantes en los  métodos HTTP  de la  solicitud, ya que contienen información de  identificación  esencial sobre los metadatos, la autorización, el identificador uniforme de recursos (URI), el almacenamiento en caché, las <em>cookies</em> y otros elementos de la  solicitud. Hay encabezados de solicitud (<em>request</em>)) y  de  respuesta (<em>response</em>), y cada uno tiene sus propios códigos de estado e información de conexión HTTP.</p>
<table>
<thead>
<tr>
<th>HTTP Method</th>
<th>Collection resource (ej. <code>https://api.example.com/collection/</code>)</th>
<th>Member resource (ej. <code>https://api.example.com/collection/item3</code>)</th>
</tr>
</thead>
<tbody>
<tr>
<td><strong>GET</strong></td>
<td><em>Retrieve</em> the URIs of the member resources of the collection resource in the response body.</td>
<td><em>Retrieve</em> representation of the member resource in the response body.</td>
</tr>
<tr>
<td><strong>POST</strong></td>
<td><em>Create</em> a member resource in the collection resource using the instructions in the request body. The URI of the created member resource is <em>automatically assigned</em> and returned in the response <code>Location</code> header field.</td>
<td><em>Create</em> a member resource in the member resource using the instructions in the request body. The URI of the created member resource is <em>automatically assigned</em> and returned in the response <code>Location</code> header field.</td>
</tr>
<tr>
<td><strong>PUT</strong></td>
<td><em>Replace</em> all the representations of the member resources of the collection resource with the representation in the request body, or <em>create</em> the collection resource if it does not exist.</td>
<td><em>Replace</em> all the representations of the member resource or <em>create</em> the member resource if it does not exist, with the representation in the request body.</td>
</tr>
<tr>
<td><strong>PATCH</strong></td>
<td><em>Update</em> all the representations of the member resources of the collection resource using the instructions in the request body, or <em>may create</em> the collection resource if it does not exist.</td>
<td><em>Update</em> all the representations of the member resource, or <em>may create</em> the member resource if it does not exist, using the instructions in the request body.</td>
</tr>
<tr>
<td><strong>DELETE</strong></td>
<td><em>Delete</em> all the representations of the member resources of the collection resource.</td>
<td><em>Delete</em> all the representations of the member resource.</td>
</tr>
</tbody>
</table>
<p>Para que una API se considere de RESTful, debe tener:</p>
<ul>
<li>Arquitectura cliente-servidor: la arquitectura REST está compuesta por clientes, servidores y recursos, y administra las solicitudes con HTTP.</li>
<li>Sin estado: el contenido de los clientes no se almacena en el servidor entre las solicitudes. En su lugar, la información sobre el estado de la sesión está en el cliente.</li>
<li>Capacidad de caché: el almacenamiento en caché puede eliminar la necesidad de algunas interacciones cliente-servidor.</li>
<li>Sistema en capas: las interacciones cliente-servidor pueden estar mediadas por capas adicionales. Estas capas pueden ofrecer funcionalidades adicionales, como equilibrio de carga, cachés compartidos o seguridad.</li>
<li>Código de demanda (opcional): los servidores pueden extender las funciones de un cliente transfiriendo código ejecutable.</li>
<li>Interfaz uniforme: esta limitación es fundamental para el diseño de las API de RESTful e incluye 4 aspectos:
-- Identificación de recursos en las solicitudes: los recursos se identifican en las solicitudes y se separan de las representaciones que se devuelven al cliente.
-- Administración de recursos mediante representaciones: los clientes reciben archivos que representan los recursos. Estas representaciones deben tener la información suficiente como para poder ser modificadas o eliminadas.
-- Mensajes autodescriptivos: cada mensaje que se devuelve al cliente contiene la información suficiente para describir cómo debe procesar la información.
-- Hipermedios es el motor del estado de la aplicación: después de acceder a un recurso, el cliente REST debe ser capaz de descubrir mediante hipervínculos todas las otras acciones que están disponibles actualmente.</li>
</ul>
<h3 id="response">Response</h3>
<ul>
<li>2xx Éxito: El código de estado más importante aquí es 200, que significa que todo funcionó como se esperaba y el recurso se encontró en el SERVIDOR.</li>
<li>4xx Errores del cliente: Estos son códigos para errores del lado del cliente, lo que significa que el cliente solicitó un recurso incorrecto o el famoso 404 que significa que no se pudo encontrar el recurso en el SERVIDOR.</li>
<li>5xx Errores del servidor: Esto significa que el SERVIDOR mismo falló al procesar tu SOLICITUD. Tal vez debido a un error en el código del servidor o algo relacionado.</li>
</ul>
<h2 id="soap-y-graphql">SOAP y GraphQL</h2>
<p>Ademas de REST, existe el protocolo SOAP que usa XML para mensajes y es muy estricto (requiere ciertas estructuras).
Tambien nos podemos encontrar con una alternativa creada por <a href="https://www.facebook.com/">Facebook</a> que se llama <a href="https://graphql.org/">GraphQL</a>.</p>
<p>GraphQL establece como prioridad brindar a los clientes exactamente los datos que solicitan y nada más. Es una alternativa a REST, que en lugar de múltiples endpoints, tiene un único endpoint donde el cliente especifica exactamente qué datos necesita en una consulta (<em>query</em>) estructurada. Esto permite obtener sólo la información solicitada y combinar datos de distintas fuentes en una sola. Un ejemplo de consulta GraphQL sería:</p>
<div class="codehilite"><pre><span></span><code><span class="k">query</span><span class="w"> </span><span class="p">{</span>
<span class="w">  </span><span class="n">usuario</span><span class="p">(</span><span class="n">id</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">)</span><span class="w"> </span><span class="p">{</span>
<span class="w">    </span><span class="n">nombre</span>
<span class="w">    </span><span class="n">publicaciones</span><span class="w"> </span><span class="p">{</span>
<span class="w">      </span><span class="n">titulo</span>
<span class="w">      </span><span class="n">fecha</span>
<span class="w">    </span><span class="p">}</span>
<span class="w">  </span><span class="p">}</span>
<span class="p">}</span>
</code></pre></div>

<p>Esto pediría al servidor los campos nombre y una lista de publicaciones con sus títulos y fechas.</p>
<h2 id="chatbot-con-openai-api">Chatbot con OpenAI API</h2>
<p>Imagina que tienes una plataforma educativa con múltiples cursos. Cada día recibes decenas de preguntas repetidas de los estudiantes:</p>
<p>❓ "¿Qué cursos de programación ofrecen?"</p>
<p>❓ "¿Cómo puedo acceder a las clases grabadas?"</p>
<p>❓ "¿Qué nivel de conocimiento necesito para el curso de Python?"</p>
<p>Tú o tu equipo educativo dedican horas cada semana a contestar las mismas preguntas. ¿Y si tuvieras un asistente virtual que pudiera responder al instante, 24/7, con información precisa y actualizada sobre los cursos?</p>
<p>En esta parte de la clase vamos a ver cómo construir un sistema inteligente de forma básica que responde preguntas automáticamente, combinando dos ideas poderosas:</p>
<p>🔹 Chatbots: interfaces conversacionales que entienden lenguaje natural.</p>
<p>🔹 RAG (Retrieval-Augmented Generation): un enfoque moderno que permite que los modelos generativos como ChatGPT respondan con información extraída de tus propios documentos o base de conocimiento.</p>
<p>Para lograr esto, crearemos una pequeña "base de conocimiento" con contenido educativo y la conectaremos a un modelo de lenguaje con capacidad de razonamiento. Así el chatbot no inventará respuestas, sino que buscará primero información relevante y luego generará una respuesta basada en ese contenido.</p>
<p>Es como tener un asistente educativo virtual que conoce todos los cursos y puede guiar a los estudiantes de manera efectiva.</p>
<div class="codehilite"><pre><span></span><code><span class="err">!</span><span class="n">pip</span> <span class="n">install</span> <span class="n">openai</span> <span class="n">faiss</span><span class="o">-</span><span class="n">cpu</span> <span class="n">tiktoken</span> <span class="o">--</span><span class="n">quiet</span>

<span class="kn">from</span><span class="w"> </span><span class="nn">typing</span><span class="w"> </span><span class="kn">import</span> <span class="n">List</span>
<span class="kn">from</span><span class="w"> </span><span class="nn">IPython.display</span><span class="w"> </span><span class="kn">import</span> <span class="n">Markdown</span>
<span class="kn">from</span><span class="w"> </span><span class="nn">google.colab</span><span class="w"> </span><span class="kn">import</span> <span class="n">userdata</span>

<span class="kn">import</span><span class="w"> </span><span class="nn">openai</span>
<span class="kn">from</span><span class="w"> </span><span class="nn">openai</span><span class="w"> </span><span class="kn">import</span> <span class="n">OpenAI</span>

<span class="n">api_key</span> <span class="o">=</span> <span class="n">userdata</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="s1">&#39;OPEN_AI_KEY&#39;</span><span class="p">)</span>
<span class="n">client</span> <span class="o">=</span> <span class="n">OpenAI</span><span class="p">(</span><span class="n">api_key</span><span class="o">=</span><span class="n">api_key</span><span class="p">)</span>


<span class="n">documentos</span> <span class="o">=</span> <span class="p">[</span>
    <span class="p">{</span>
        <span class="s2">&quot;id&quot;</span><span class="p">:</span> <span class="s2">&quot;faq_cursos_disponibles&quot;</span><span class="p">,</span>
        <span class="s2">&quot;texto&quot;</span><span class="p">:</span> <span class="s2">&quot;&quot;&quot;¿Qué cursos de programación ofrecen?</span>
<span class="s2">          Actualmente ofrecemos los siguientes cursos:</span>
<span class="s2">          - Introducción a Python (Nivel Básico)</span>
<span class="s2">          - Machine Learning con Scikit-learn (Intermedio)</span>
<span class="s2">          - Desarrollo Web con Django (Avanzado)</span>
<span class="s2">          - Análisis de Datos con Pandas (Intermedio)</span>
<span class="s2">          - Fundamentos de JavaScript (Básico)</span>
<span class="s2">          - Desarrollo de Aplicaciones Móviles (Avanzado)&quot;&quot;&quot;</span>
    <span class="p">},</span>
    <span class="p">{</span>
        <span class="s2">&quot;id&quot;</span><span class="p">:</span> <span class="s2">&quot;faq_acceso_clases&quot;</span><span class="p">,</span>
        <span class="s2">&quot;texto&quot;</span><span class="p">:</span> <span class="s2">&quot;&quot;&quot;¿Cómo puedo acceder a las clases grabadas?</span>
<span class="s2">Una vez que te inscribas en un curso, tendrás acceso inmediato a nuestra plataforma de aprendizaje. Todas las clases grabadas están disponibles en la sección &#39;Mis Cursos&#39; de tu perfil. Las grabaciones se publican 24 horas después de cada clase en vivo.&quot;&quot;&quot;</span>
    <span class="p">},</span>
    <span class="p">{</span>
        <span class="s2">&quot;id&quot;</span><span class="p">:</span> <span class="s2">&quot;faq_contacto&quot;</span><span class="p">,</span>
        <span class="s2">&quot;texto&quot;</span><span class="p">:</span> <span class="s2">&quot;&quot;&quot;¿Cómo puedo contactar con atención al cliente?</span>
<span class="s2">Nuestro equipo está disponible de lunes a viernes, de 9:00 a 18:00.</span>
<span class="s2">Puedes escribirnos a soporte@miempresa.com o enviarnos un mensaje directo por Instagram (@miempresa).&quot;&quot;&quot;</span>
    <span class="p">},</span>
    <span class="p">{</span>
        <span class="s2">&quot;id&quot;</span><span class="p">:</span> <span class="s2">&quot;faq_requisitos_tecnicos&quot;</span><span class="p">,</span>
        <span class="s2">&quot;texto&quot;</span><span class="p">:</span> <span class="s2">&quot;&quot;&quot;¿Qué necesito para el curso de Python?</span>
<span class="s2">Para el curso de Introducción a Python solo necesitas tener conocimientos básicos de informática y muchas ganas de aprender. No se requiere experiencia previa en programación. Te recomendamos tener instalado Python 3.8 o superior en tu computadora.&quot;&quot;&quot;</span>
    <span class="p">},</span>
    <span class="p">{</span>
        <span class="s2">&quot;id&quot;</span><span class="p">:</span> <span class="s2">&quot;faq_clases_en_vivo&quot;</span><span class="p">,</span>
        <span class="s2">&quot;texto&quot;</span><span class="p">:</span> <span class="s2">&quot;&quot;&quot;¿Hay clases en vivo o todo es grabado?</span>
<span class="s2">Nuestros cursos incluyen tanto clases en vivo como material grabado. Las clases en vivo se realizan dos veces por semana y quedan grabadas para que puedas verlas después. También tendrás acceso a ejercicios prácticos, foros de discusión y soporte de instructores.&quot;&quot;&quot;</span>
    <span class="p">}</span>
<span class="p">]</span>

<span class="kn">from</span><span class="w"> </span><span class="nn">sklearn.feature_extraction.text</span><span class="w"> </span><span class="kn">import</span> <span class="n">TfidfVectorizer</span>
<span class="kn">import</span><span class="w"> </span><span class="nn">numpy</span><span class="w"> </span><span class="k">as</span><span class="w"> </span><span class="nn">np</span>
<span class="kn">import</span><span class="w"> </span><span class="nn">faiss</span>

<span class="c1"># Extraer los textos de la lista de documentos</span>
<span class="n">corpus</span> <span class="o">=</span> <span class="p">[</span><span class="n">doc</span><span class="p">[</span><span class="s2">&quot;texto&quot;</span><span class="p">]</span> <span class="k">for</span> <span class="n">doc</span> <span class="ow">in</span> <span class="n">documentos</span><span class="p">]</span>

<span class="c1"># Vectorizar con TF-IDF</span>
<span class="n">vectorizer</span> <span class="o">=</span> <span class="n">TfidfVectorizer</span><span class="p">()</span>
<span class="n">doc_vectors</span> <span class="o">=</span> <span class="n">vectorizer</span><span class="o">.</span><span class="n">fit_transform</span><span class="p">(</span><span class="n">corpus</span><span class="p">)</span><span class="o">.</span><span class="n">toarray</span><span class="p">()</span>

<span class="c1"># Crear el índice FAISS</span>
<span class="n">index</span> <span class="o">=</span> <span class="n">faiss</span><span class="o">.</span><span class="n">IndexFlatL2</span><span class="p">(</span><span class="n">doc_vectors</span><span class="o">.</span><span class="n">shape</span><span class="p">[</span><span class="mi">1</span><span class="p">])</span>
<span class="n">index</span><span class="o">.</span><span class="n">add</span><span class="p">(</span><span class="n">np</span><span class="o">.</span><span class="n">array</span><span class="p">(</span><span class="n">doc_vectors</span><span class="p">)</span><span class="o">.</span><span class="n">astype</span><span class="p">(</span><span class="s1">&#39;float32&#39;</span><span class="p">))</span>

<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;Índice FAISS creado con éxito. Número de documentos indexados:&quot;</span><span class="p">,</span> <span class="n">index</span><span class="o">.</span><span class="n">ntotal</span><span class="p">)</span>

<span class="k">def</span><span class="w"> </span><span class="nf">recuperar_contexto</span><span class="p">(</span><span class="n">pregunta</span><span class="p">,</span> <span class="n">k</span><span class="o">=</span><span class="mi">1</span><span class="p">):</span>
    <span class="n">pregunta_vec</span> <span class="o">=</span> <span class="n">vectorizer</span><span class="o">.</span><span class="n">transform</span><span class="p">([</span><span class="n">pregunta</span><span class="p">])</span><span class="o">.</span><span class="n">toarray</span><span class="p">()</span><span class="o">.</span><span class="n">astype</span><span class="p">(</span><span class="s1">&#39;float32&#39;</span><span class="p">)</span>
    <span class="n">D</span><span class="p">,</span> <span class="n">I</span> <span class="o">=</span> <span class="n">index</span><span class="o">.</span><span class="n">search</span><span class="p">(</span><span class="n">pregunta_vec</span><span class="p">,</span> <span class="n">k</span><span class="p">)</span>
    <span class="n">textos</span> <span class="o">=</span> <span class="p">[</span><span class="n">corpus</span><span class="p">[</span><span class="n">i</span><span class="p">]</span> <span class="k">for</span> <span class="n">i</span> <span class="ow">in</span> <span class="n">I</span><span class="p">[</span><span class="mi">0</span><span class="p">]]</span>
    <span class="k">return</span> <span class="s2">&quot;</span><span class="se">\n\n</span><span class="s2">&quot;</span><span class="o">.</span><span class="n">join</span><span class="p">(</span><span class="n">textos</span><span class="p">)</span>

<span class="k">def</span><span class="w"> </span><span class="nf">generar_respuesta</span><span class="p">(</span><span class="n">pregunta</span><span class="p">):</span>
    <span class="n">contexto</span> <span class="o">=</span> <span class="n">recuperar_contexto</span><span class="p">(</span><span class="n">pregunta</span><span class="p">)</span>

    <span class="n">prompt</span> <span class="o">=</span> <span class="sa">f</span><span class="s2">&quot;&quot;&quot;</span>
<span class="s2">      Eres un chatbot de asistencia para una plataforma educativa</span>
<span class="s2">      para responder preguntas frecuentes.</span>
<span class="s2">      Responde a la siguiente pregunta</span>
<span class="s2">      utilizando el contexto proporcionado si es relevante.</span>
<span class="s2">      Si no tienes contexto suficiente, dame una respuesta que sea válida.</span>

<span class="s2">      Contexto:</span>
<span class="s2">      </span><span class="si">{</span><span class="n">contexto</span><span class="si">}</span>

<span class="s2">      Pregunta: </span><span class="si">{</span><span class="n">pregunta</span><span class="si">}</span>
<span class="s2">      Respuesta:</span>
<span class="s2">    &quot;&quot;&quot;</span>

    <span class="n">respuesta</span> <span class="o">=</span> <span class="n">client</span><span class="o">.</span><span class="n">chat</span><span class="o">.</span><span class="n">completions</span><span class="o">.</span><span class="n">create</span><span class="p">(</span>
        <span class="n">model</span><span class="o">=</span><span class="s2">&quot;gpt-4o&quot;</span><span class="p">,</span>
        <span class="n">messages</span><span class="o">=</span><span class="p">[{</span><span class="s2">&quot;role&quot;</span><span class="p">:</span> <span class="s2">&quot;user&quot;</span><span class="p">,</span> <span class="s2">&quot;content&quot;</span><span class="p">:</span> <span class="n">prompt</span><span class="p">}],</span>
        <span class="n">temperature</span><span class="o">=</span><span class="mf">0.3</span>
    <span class="p">)</span>

    <span class="k">return</span> <span class="n">respuesta</span><span class="o">.</span><span class="n">choices</span><span class="p">[</span><span class="mi">0</span><span class="p">]</span><span class="o">.</span><span class="n">message</span><span class="o">.</span><span class="n">content</span>

<span class="k">while</span> <span class="kc">True</span><span class="p">:</span>
    <span class="n">pregunta</span> <span class="o">=</span> <span class="nb">input</span><span class="p">(</span><span class="s2">&quot;👤 Estudiante: &quot;</span><span class="p">)</span>
    <span class="k">if</span> <span class="n">pregunta</span><span class="o">.</span><span class="n">lower</span><span class="p">()</span> <span class="ow">in</span> <span class="p">[</span><span class="s2">&quot;salir&quot;</span><span class="p">,</span> <span class="s2">&quot;exit&quot;</span><span class="p">]:</span>
        <span class="k">break</span>
    <span class="n">respuesta</span> <span class="o">=</span> <span class="n">generar_respuesta</span><span class="p">(</span><span class="n">pregunta</span><span class="p">)</span>
    <span class="n">display</span><span class="p">(</span><span class="n">Markdown</span><span class="p">(</span><span class="s2">&quot;**Chatbot:** &quot;</span> <span class="o">+</span> <span class="n">respuesta</span><span class="p">))</span>
</code></pre></div>

<p>Respuestas</p>
<p>Estudiante: Hola, ¿qué cursos tienen disponibles?
Chatbot: ¡Hola! Actualmente ofrecemos los siguientes cursos:</p>
<ul>
<li>Introducción a Python (Nivel Básico)</li>
<li>Machine Learning con Scikit-learn (Intermedio)</li>
<li>Desarrollo Web con Django (Avanzado)</li>
<li>Análisis de Datos con Pandas (Intermedio)</li>
<li>Fundamentos de JavaScript (Básico)</li>
<li>Desarrollo de Aplicaciones Móviles (Avanzado)</li>
</ul>
<p>¿Te interesa algún curso en particular?</p>
<p>👤 Estudiante: ¿Qué necesito para el curso de Python?
Chatbot: Para el curso de Introducción a Python solo necesitas tener conocimientos básicos de informática y muchas ganas de aprender. No se requiere experiencia previa en programación. Te recomendamos tener instalado Python 3.8 o superior en tu computadora. ¿Te gustaría que te envíe más información sobre los requisitos técnicos?</p>
<p>👤 Estudiante: ¿Hay clases en vivo o todo es grabado?
Chatbot: Nuestros cursos incluyen tanto clases en vivo como material grabado. Las clases en vivo se realizan dos veces por semana y quedan grabadas para que puedas verlas después. También tendrás acceso a ejercicios prácticos, foros de discusión y soporte de instructores. ¿Te gustaría conocer los horarios de las próximas clases?</p>
<p>👤 Estudiante: salir</p>
<h2 id="ejemplos-api-python">Ejemplos API + Python</h2>
<div class="codehilite"><pre><span></span><code><span class="kn">import</span><span class="w"> </span><span class="nn">requests</span>

<span class="n">google</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="s2">&quot;https://developers.google.com&quot;</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;Google:&quot;</span><span class="p">,</span> <span class="n">google</span><span class="o">.</span><span class="n">status_code</span><span class="p">)</span>

<span class="n">NBA</span> <span class="o">=</span> <span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="s2">&quot;https://api.sportsdata.io/api/nba/fantasy/json/CurrentSeason&quot;</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;NBA:&quot;</span><span class="p">,</span> <span class="n">NBA</span><span class="o">.</span><span class="n">status_code</span><span class="p">)</span>

<span class="n">rotten_tomato</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="s2">&quot;http://api.rottentomatoes.com/api/public/v1.0/lists/movies/box_office.json&quot;</span><span class="p">)</span>
<span class="nb">print</span><span class="p">(</span><span class="s2">&quot;Rotten Tomatoes:&quot;</span><span class="p">,</span> <span class="n">rotten_tomato</span><span class="o">.</span><span class="n">status_code</span><span class="p">)</span>
</code></pre></div>

<p>El formato JSON (JavaScript Object Notation), que es el lenguaje de las APIs RESTful. Es la forma de codificar datos para que sean fácilmente legibles por las máquinas.</p>
<div class="codehilite"><pre><span></span><code><span class="n">google</span><span class="o">.</span><span class="n">json</span><span class="p">()</span>
</code></pre></div>

<p>Output</p>
<div class="codehilite"><pre><span></span><code><span class="n">JSONDecodeError</span><span class="p">:</span> <span class="n">Expecting</span> <span class="n">value</span><span class="p">:</span> <span class="n">line</span> <span class="mi">1</span> <span class="n">column</span> <span class="mi">1</span> <span class="p">(</span><span class="n">char</span> <span class="mi">0</span><span class="p">)</span>
</code></pre></div>

<p>El problema aquí es que no estamos conectados a una API adecuada que tenga un JSON como punto final, por lo que necesitaremos obtener otra URL válida. Recuerda que el código 200 significa que la conexión se ha establecido, pero no que sea la conexión que necesitas. Probemos con la API de skyscanner.</p>
<p>Nos conectaremos a esta API a través de la web RapidAPI  <a href="https://rapidapi.com/skyscanner/api/skyscanner-flight-search">RapidAPI</a>, por lo que necesitarás crear una cuenta para obtener una Key personalizada (ID de usuario) que te dará acceso a ella. Solo regístrate y obtén tu Key. El "problema" con esta API es que necesitaremos pasar algunos parámetros, incluyendo los headers y la ciudad siguiendo este código:</p>
<div class="codehilite"><pre><span></span><code><span class="n">url</span> <span class="o">=</span> <span class="s2">&quot;https://skyscanner-skyscanner-flight-search-v1.p.rapidapi.com/apiservices/autosuggest/v1.0/UK/GBP/en-GB/&quot;</span>

<span class="n">params</span> <span class="o">=</span> <span class="p">{</span><span class="s2">&quot;query&quot;</span><span class="p">:</span><span class="s2">&quot;Tokyo&quot;</span><span class="p">}</span>

<span class="n">headers</span> <span class="o">=</span> <span class="p">{</span>
    <span class="s1">&#39;x-rapidapi-host&#39;</span><span class="p">:</span> <span class="s2">&quot;skyscanner-skyscanner-flight-search-v1.p.rapidapi.com&quot;</span><span class="p">,</span>
    <span class="s1">&#39;x-rapidapi-key&#39;</span><span class="p">:</span> <span class="s2">&quot;&lt;introduce your RapidAPI key here&gt;&quot;</span><span class="p">}</span>

<span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="n">headers</span> <span class="o">=</span> <span class="n">headers</span><span class="p">,</span> <span class="n">params</span> <span class="o">=</span> <span class="n">params</span><span class="p">)</span>
<span class="n">response</span><span class="o">.</span><span class="n">json</span><span class="p">()</span>
</code></pre></div>

<p>Output:</p>
<div class="codehilite"><pre><span></span><code>
</code></pre></div>

<p>Para conocer los parámetros necesarios para conectarnos correctamente a una API, primero debemos revisar su documentación. Para la siguiente consulta, buscaremos los precios de los vuelos desde San Francisco a la ciudad de Nueva York para el 12/12/2020</p>
<div class="codehilite"><pre><span></span><code><span class="n">url</span> <span class="o">=</span> <span class="s2">&quot;https://skyscanner-skyscanner-flight-search-v1.p.rapidapi.com/apiservices/browsequotes/v1.0/US/USD/en-US/SFO-sky/NYCA-sky/2020-12-12&quot;</span>

<span class="n">params</span> <span class="o">=</span> <span class="p">{</span><span class="s2">&quot;inboundpartialdate&quot;</span><span class="p">:</span><span class="s2">&quot;2020-12-12&quot;</span><span class="p">}</span>

<span class="n">headers</span> <span class="o">=</span> <span class="p">{</span>
    <span class="s1">&#39;x-rapidapi-host&#39;</span><span class="p">:</span> <span class="s2">&quot;skyscanner-skyscanner-flight-search-v1.p.rapidapi.com&quot;</span><span class="p">,</span>
    <span class="s1">&#39;x-rapidapi-key&#39;</span><span class="p">:</span> <span class="s2">&quot;&lt;introduce your RapidAPI key here&gt;&quot;</span><span class="p">}</span>

<span class="n">response</span> <span class="o">=</span> <span class="n">requests</span><span class="o">.</span><span class="n">get</span><span class="p">(</span><span class="n">url</span><span class="p">,</span> <span class="n">headers</span><span class="o">=</span><span class="n">headers</span><span class="p">,</span> <span class="n">params</span><span class="o">=</span><span class="n">params</span><span class="p">)</span>

<span class="n">response</span><span class="o">.</span><span class="n">json</span><span class="p">()</span>
</code></pre></div>

<p>Chrome DevTools</p>
<p><img alt="alt text" src="{{ site.baseurl }}/assets/images/04_dev.png"></p>
            <div class="d-grid gap-2 d-md-flex justify-content-md-end mt-4">
                <a href="javascript:history.back()" class="btn btn-outline-primary btn-back">
                    <i class="bi bi-arrow-left me-2"></i>Volver
                </a>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>