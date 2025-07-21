---
layout: default
title: "Proyecto Final"
nav_order: 05
---
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto Final</title>
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
            <h1>Proyecto Final</h1>
            <h2 id="vercel">Vercel</h2>
<p>Vercel es una plataforma en la nube especializada en el despliegue de aplicaciones web modernas. Facilita publicar proyectos (estáticos o con Node.js) directamente desde repositorios de GitHub/GitLab/Bitbucket. Con Vercel basta hacer push de tu código y automáticamente detecta el framework (React, Next.js, etc.) y realiza el <em>build</em> y <em>despliegue</em>. Obtienes un sitio <em>web</em> accesible en Internet con HTTPS y dominio propio si quieres. Es ideal para prototipos rápidos o apps de producción, ya que maneja escalado automático y <em>previews</em> de cada rama.</p>
<h2 id="lovable">Lovable</h2>
<p>Lovable es una plataforma de desarrollo de IA conversacional que permite crear asistentes virtuales personalizados. Ofrece herramientas para diseñar flujos de conversación, integrarse con múltiples canales (web, WhatsApp, Messenger) y conectar con APIs externas. Su interfaz intuitiva permite crear chatbots avanzados sin necesidad de programación, aunque también ofrece APIs para desarrolladores que necesiten mayor personalización. Lovable destaca por su capacidad de aprendizaje automático, permitiendo que los asistentes mejoren con el tiempo a través de las interacciones con los usuarios.</p>
<h2 id="windsurf">Windsurf</h2>
<p>Windsurf es un asistente de desarrollo impulsado por IA que ayuda a los programadores a ser más productivos. Funciona como un copiloto de código que entiende el contexto del proyecto, sugiere mejoras y puede generar código automáticamente. Se integra con editores de código populares y soporta múltiples lenguajes de programación. Windsurf es particularmente útil para tareas repetitivas, depuración de código y generación de documentación, permitiendo a los desarrolladores enfocarse en la lógica de negocio y la resolución de problemas complejos.</p>
<h2 id="actividades">Actividades</h2>
<ul>
<li>Diseñar un prompt para crear una pagina web para alguno de los casos de uso trabajados en clases.</li>
<li>Crear la pagina web utilizando el prompt.</li>
<li>Iterar para mejorar la pagina web. Documentar para incluir en el informe.</li>
<li>Incluir automatización del entregable 2 en la página.</li>
<li>Presentación DEMO.</li>
</ul>
<p>Pueden utilizar cualquier herramienta. Se sugiere Lovable, Windsurf, Github y Vercel.</p>
<p>Requisito para aprobar la materia.</p>
<h2 id="entregable">Entregable</h2>
<ul>
<li>Informe técnico incluyendo el prompt y las iteraciones.</li>
<li>Link de la página web</li>
</ul>
<p>Si hay inconvenientes con el formulario, enviar la entrega por email a rodrig.florencia@gmail.com</p>
<iframe aria-label='Entregable Final' frameborder="0" style="height:500px;width:99%;border:none;" src='https://forms.zohopublic.com/frodriguezpla1/form/EntregableFinal/formperma/W2C3OkNv6AmYVEqRWHjDtJbnTYEJoju6hc5A0fvbUvM'></iframe>

<!-- 
## Actividades

Desplegar un proyecto simple: Toma un repositorio básico de *chatbot* (puedes crear uno estático: un *index.html* con un formulario y un poco de JavaScript que llame a la API de OpenAI) y publícalo en Vercel. Verifica que la app funcione desde la URL que te proporciona Vercel.

Usar una plantilla de *chatbot*: Ve a la galería de plantillas de Vercel y elige “Next.js AI Chatbot” o “Chatbot UI”. Despliega con un clic la plantilla, conecta tu clave de OpenAI en configuración y prueba el bot.

Crear un endpoint en Vercel: En el mismo proyecto, agrega una función serverless (archivo en /api/). Por ejemplo, /api/hello.js que responda {"msg":"hola"}. Despliega de nuevo y prueba llamando https://tu-dominio.vercel.app/api/hello. Esto demuestra cómo tu chatbot podría usar funciones de backend para integrarse con agentes IA o servicios externos.

Con estas actividades conocerás el flujo completo: crear un chatbot, alojarlo en la nube y conectarlo con asistentes personalizados o APIs públicas, todo sin infraestructura propia. Fuentes: Basamos esta unidad en documentación de Vercel y ejemplos de plantillas.-->
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