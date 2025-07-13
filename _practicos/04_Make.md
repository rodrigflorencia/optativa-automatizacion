---
layout: default
title: "Make"
nav_order: 04
---

## Make

Make (antes Integromat) es una plataforma de automatización visual “No-Code” que permite conectar aplicaciones y servicios mediante flujos de trabajo. 

En Make se construyen escenarios que se activan por un disparador (trigger) y ejecutan módulos en secuencia, los cuales pueden ser acciones en diferentes aplicaciones (p.ej., enviar un correo, crear un registro en Notion, llamar a una API, etc.).

La lógica es: cuando sucede algo (un formulario recibe respuesta, llega un correo, se crea un evento), Make ejecuta los pasos definidos para automatizar la tarea.

![alt text]({{ site.baseurl }}/assets/images/05_a.png)

## Conceptos clave

- Escenario: flujo de automatización en Make.
- Disparador (Trigger): evento inicial que arranca el flujo (nuevo formulario, webhook, tiempo programado).
- Módulos: bloques que realizan acciones (conectar apps). Ejemplos: “Enviar email con Gmail”, “Crear elemento en Notion”, “Hacer una petición HTTP”.
-Acciones condicionales: puedes añadir filtros o routers para decidir la ruta según condiciones.

### Actividades

Guardar archivos de correos adjuntos

![alt text]({{ site.baseurl }}/assets/images/04_Correo.png)

Analizar pdf con Gemini

![alt text]({{ site.baseurl }}/assets/images/04_GmalDrive.png)

Analizar pdf con Gemini y guardar en planilla datos

- Detecta cuando se sube un archivo nuevo a una carpeta específica de Google Drive.
- Descarga ese archivo.
- Sube el PDF a Gemini usando Upload a File.
- Procesa el texto con Create a Completion para obtener información clave (número de factura, cliente, fecha, monto).
- Guarda esos datos en una planilla de Google con Add a Row.
- Envía un correo electrónico con Send an Email.

![alt text]({{ site.baseurl }}/assets/images/04_GeminiSheeysGmail.png)

Formulario a Notion

- Crea un formulario sencillo (p.ej. en Google Forms) con campos “Nombre” y “Comentario”.
- En Make, crea un escenario nuevo con disparador Google Forms > Watch Responses (selecciona tu formulario).
- Añade un módulo Notion > Create Database Item. Conecta tu cuenta de Notion y selecciona la base de datos donde quieres guardar respuestas.
- Mapea cada respuesta del formulario a propiedades de Notion (por ejemplo, “Nombre” va a la propiedad Título, “Comentario” a un campo de texto).
- Activa el escenario. Prueba enviando el formulario: verifica que aparezca una nueva página en Notion con esos datos.

Correo automático

- Prepara una cuenta Gmail de prueba y un destinatario.
- En Make, disparador Gmail > Watch Emails con filtro (p.ej. Asunto contiene “Soporte”).
- Agrega módulo Gmail > Send Email. Configura el destinatario (puedes usar el mismo remitente), un asunto, y un cuerpo fijo o dinámico.
-Cuando llegue un email de prueba con asunto “Soporte”, Make debería enviar la respuesta automática definida.

Estas actividades te guiarán para crear automatizaciones completas, conectando formularios, correos, Notion.