---
layout: default
title: "Automatizacion"
nav_order: 05
---

<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Automatizacion</title>
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
            <h2 id="automatizacion">Automatización</h2>
<p>La automatización de procesos implica el uso de tecnología para ejecutar tareas recurrentes sin intervención humana. Por ejemplo, una aplicación financiera suele ofrecer un conjunto de funciones orientadas a automatizar tareas y procesos empresariales en áreas como el libro mayor, cuentas por cobrar, cuentas por pagar y cierre financiero. Por eso, podemos afirmar que las organizaciones llevan años automatizando desde que compraron su primer sistema informático (o su primer <em>software</em> como servicio —SaaS—, si se trata de una startup).</p>
<p>Esta forma clásica de automatización suele quedar aislada dentro de departamentos específicos (finanzas, recursos humanos, ventas, compras, cadena de suministro, producción, etc.). Sin embargo, desde hace años, muchas organizaciones han venido usando tecnologías de automatización más avanzadas para automatizar procesos de extremo a extremo que abarcan múltiples departamentos, lo que incluye la automatización robótica de procesos (RPA), la gestión de procesos de negocio (BPM) y la automatización de flujos de trabajo.</p>
<h2 id="beneficios-de-la-automatizacion">Beneficios de la Automatización</h2>
<ol>
<li><strong>Eficiencia mejorada</strong>: Reducción del tiempo necesario para completar tareas.</li>
<li><strong>Reducción de errores</strong>: Eliminación de errores humanos en procesos repetitivos.</li>
<li><strong>Ahorro de costos</strong>: Reducción de la necesidad de mano de obra para tareas rutinarias.</li>
<li><strong>Escalabilidad</strong>: Capacidad para manejar mayores volúmenes de trabajo sin aumentar proporcionalmente los recursos.</li>
<li><strong>Mejora en la experiencia del empleado</strong>: Libera a los empleados de tareas monótonas para que puedan enfocarse en trabajos de mayor valor.</li>
</ol>
<h2 id="tipos-de-automatizacion">Tipos de Automatización</h2>
<ul>
<li><strong>Automatización de procesos robóticos (RPA)</strong>: Uso de <em>robots</em> de <em>software</em> para automatizar tareas repetitivas basadas en reglas.</li>
<li><strong>Automatización de flujos de trabajo</strong>: Coordinación de tareas y procesos entre personas y sistemas.</li>
<li><strong>Automatización de TI</strong>: Automatización de tareas de infraestructura y operaciones de TI.</li>
<li><strong>Automatización empresarial</strong>: Automatización de procesos comerciales complejos que abarcan múltiples departamentos.</li>
</ul>
<h2 id="herramientas-populares">Herramientas Populares</h2>
<ul>
<li><strong><a href="https://zapier.com/"> Zapier</a></strong>: Para automatizar tareas entre aplicaciones <em>web</em>.</li>
<li><strong><a href="https://www.integromat.com/">Make (anteriormente Integromat)</a></strong>: Para automatizaciones complejas con lógica condicional.</li>
<li><strong><a href="https://n8n.io/">n8n</a></strong>: Herramienta de automatización de código abierto.</li>
<li><strong><a href="https://flow.microsoft.com/">Power Automate</a></strong>: Solución de Microsoft para automatización de flujos de trabajo.</li>
</ul>
<h2 id="make">Make</h2>
<p>Make (antes Integromat) es una plataforma de automatización visual “No-Code” que permite conectar aplicaciones y servicios mediante flujos de trabajo. </p>
<p>En Make se construyen escenarios que se activan por un disparador (trigger) y ejecutan módulos en secuencia, los cuales pueden ser acciones en diferentes aplicaciones (p.ej., enviar un correo, crear un registro en Notion, llamar a una API, etc.).</p>
<p>La lógica es: cuando sucede algo (un formulario recibe respuesta, llega un correo, se crea un evento), Make ejecuta los pasos definidos para automatizar la tarea.</p>
<p><img alt="alt text" src="{{ site.baseurl }}/assets/images/05_a.png"></p>
<h2 id="conceptos-clave">Conceptos clave</h2>
<ul>
<li>Escenario: flujo de automatización en Make.</li>
<li>Disparador (Trigger): evento inicial que arranca el flujo (nuevo formulario, webhook, tiempo programado).</li>
<li>Módulos: bloques que realizan acciones (conectar apps). Ejemplos: “Enviar email con Gmail”, “Crear elemento en Notion”, “Hacer una petición HTTP”.
-Acciones condicionales: puedes añadir filtros o routers para decidir la ruta según condiciones.</li>
</ul>
<h3 id="actividades">Actividades</h3>
<p>Guardar archivos de correos adjuntos</p>
<p><img alt="alt text" src="{{ site.baseurl }}/assets/images/04_Correo.png"></p>
<p>Analizar pdf con Gemini</p>
<p><img alt="alt text" src="{{ site.baseurl }}/assets/images/04_GmalDrive.png"></p>
<p>Analizar pdf con Gemini y guardar en planilla datos</p>
<ul>
<li>Detecta cuando se sube un archivo nuevo a una carpeta específica de Google Drive.</li>
<li>Descarga ese archivo.</li>
<li>Sube el PDF a Gemini usando Upload a File.</li>
<li>Procesa el texto con Create a Completion para obtener información clave (número de factura, cliente, fecha, monto).</li>
<li>Guarda esos datos en una planilla de Google con Add a Row.</li>
<li>Envía un correo electrónico con Send an Email.</li>
</ul>
<p><img alt="alt text" src="{{ site.baseurl }}/assets/images/04_GeminiSheeysGmail.png"></p>
<p>Formulario a Notion</p>
<ul>
<li>Crea un formulario sencillo (p.ej. en Google Forms) con campos “Nombre” y “Comentario”.</li>
<li>En Make, crea un escenario nuevo con disparador Google Forms &gt; Watch Responses (selecciona tu formulario).</li>
<li>Añade un módulo Notion &gt; Create Database Item. Conecta tu cuenta de Notion y selecciona la base de datos donde quieres guardar respuestas.</li>
<li>Mapea cada respuesta del formulario a propiedades de Notion (por ejemplo, “Nombre” va a la propiedad Título, “Comentario” a un campo de texto).</li>
<li>Activa el escenario. Prueba enviando el formulario: verifica que aparezca una nueva página en Notion con esos datos.</li>
</ul>
<p>Correo automático</p>
<ul>
<li>Prepara una cuenta Gmail de prueba y un destinatario.</li>
<li>En Make, disparador Gmail &gt; Watch Emails con filtro (p.ej. Asunto contiene “Soporte”).</li>
<li>Agrega módulo Gmail &gt; Send Email. Configura el destinatario (puedes usar el mismo remitente), un asunto, y un cuerpo fijo o dinámico.
-Cuando llegue un email de prueba con asunto “Soporte”, Make debería enviar la respuesta automática definida.</li>
</ul>
<p>Estas actividades te guiarán para crear automatizaciones completas, conectando formularios, correos, Notion.</p>
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