---
layout: default
title: "Iag"
nav_order: 2
---
## Unidad 2: Inteligencia Artificial Generativa

La **IA Generativa** es un tipo de inteligencia artificial capaz de *crear contenido nuevo* usando lo que ya sabe.  Concretamente, modelos generativos (como GPT-4) pueden generar texto, código, imágenes o música partiendo de un *prompt*. Las organizaciones utilizan la IA generativa para múltiples fines: desde **chatbots** que responden preguntas hasta creación de contenido multimedia o diseños de productos.

## Ingenieria de *prompts*

La ingeniería de *prompts* consiste en diseñar cuidadosamente las instrucciones que damos a un modelo de lenguaje para obtener respuestas útiles. 

Un *prompt* puede incluir la tarea a realizar, contexto adicional y ejemplos. Por ejemplo, en vez de preguntar simplemente “Explica Python”, un *prompt* mejorado sería “Explica qué es una lista en Python y da un ejemplo sencillo.” Esto guía mejor al modelo y mejora la calidad del resultado. En esencia, se trata de “programar” al modelo mostrándole ejemplos o detalles suficientes.

La ingeniería de *prompt* se presenta como una disciplina innovadora, enfocada en la creación y optimización de instrucciones (*prompts*) para el uso eficiente de modelos de lenguaje (ML). Esto abarca una amplia gama de aplicaciones y áreas de investigación.

Habilidades en ingeniería de *prompt* facilitan la comprensión de las capacidades y limitaciones inherentes a los grandes modelos de lenguaje (LLM).

Investigadores emplean esta disciplina para potenciar el desempeño de los LLM en tareas tanto cotidianas como complejas, incluyendo respuesta a preguntas y razonamiento aritmético. Por su parte, desarrolladores la utilizan para diseñar técnicas de *prompt* robustas y eficaces que interactúen tanto con los LLM como con otras herramientas.

La ingeniería de prompt trasciende el simple diseño y desarrollo de instrucciones, abarcando un amplio espectro de habilidades y técnicas útiles para la interacción y desarrollo con LLM. Representa una habilidad fundamental para interactuar, construir y comprender las capacidades de los LLM. Su aplicación permite mejorar la seguridad de los LLM y generar nuevas capacidades, tales como la incorporación de conocimientos de dominio y herramientas externas.

![Prompts](https://docs.kanaries.net/_next/image?url=https%3A%2F%2Fdocs-us.oss-us-west-1.aliyuncs.com%2Fimg%2Fblog-cover-images%2Fchatgpt-prompt-blogheader.png%3Fx-oss-process%3Dimage%2Fresize%2Climit_0%2Cm_fill%2Cw_1536%2Ch_1024%2Fquality%2Cq_100&w=3840&q=75)

### Prompts Básicos

Los *prompts* simples pueden ser efectivos, pero la clave está en la cantidad y calidad de la información proporcionada al modelo. Un buen *prompt* incluye la instrucción o pregunta, contexto relevante, entradas específicas y ejemplos claros. Estos elementos combinados guían al modelo hacia resultados más precisos y útiles.

Comencemos con un ejemplo básico de un *prompt* simple:

```none
Prompt
El cielo es

```

Resultado:

```none
azul
```

Como podemos ver, el modelo de lenguaje genera una continuación de cadenas que tienen sentido en el contexto de "El cielo es". El resultado puede ser inesperado o estar muy alejado de la tarea que queremos lograr. El cielo es azul en un día claro. En un día nublado, el cielo puede ser gris o blanco.

Este ejemplo básico también destaca la necesidad de proporcionar más contexto o instrucciones sobre lo que específicamente queremos lograr.

Prompt:

```none
Completa la oración:
El cielo es
```

Resultado:

```none
tan hermoso hoy.
```

Le dijimos al modelo que completara la oración, por lo que el resultado se ve mucho mejor ya que sigue exactamente lo que le dijimos que hiciera ("completa la oración"). Este enfoque de diseñar *prompts* óptimos para instruir al modelo a realizar una tarea se llama ingeniería de *prompts*.

Los LLMs actuales pueden realizar todo tipo de tareas avanzadas que van desde la síntesis de texto hasta el razonamiento matemático y la generación de código.

Hemos utilizado un *prompt* muy simple anteriormente. Un *prompt* estándar tiene el siguiente formato:

```none
¿<Pregunta>?
```

o

```none
<Instrucción>
```

Esto se puede formatear como una respuesta a una pregunta (QA), que es estándar en muchos conjuntos de datos de QA, de la siguiente manera:

```none
Q: ¿<Pregunta>?
A:
```

### Elementos de un *prompt*

Una *prompt* puede contener cualquiera de los siguientes componentes:

- Instrucción - una tarea o instrucción específica que deseas que el modelo realice
- Contexto - puede involucrar información externa o contexto adicional que puede dirigir al modelo a respuestas mejores
- Datos de entrada - es la entrada o pregunta para la que nos interesa encontrar una respuesta
- Indicador de salida - indica el tipo o formato de la salida
No todos los componentes son necesarios para una prompt y el formato depende de la tarea en cuestión.

## Consejos generales para diseñar prompts

### Comienza por lo simple

Al comenzar a diseñar prompts, hay que tener en cuenta que es un proceso iterativo que requiere mucha experimentación para obtener resultados óptimos.

Cuando tienes una tarea grande que involucra muchos sub-tareas diferentes, puedes intentar dividir la tarea en sub-tareas más simples y seguir construyendo a medida que obtienes mejores resultados. 

Esto evita agregar demasiada complejidad al proceso de diseño de la indicación al principio.

### La instrucción

Dseñar prompts efectivos para varias tareas simples usando comandos para indicarle al modelo lo que deseas lograr, como "Escribe", "Clasifica", "Resumen", "Traduce", "Ordena", etc.

La clave está en experimentar para descubrir qué funciona mejor. Prueba diversas instrucciones, palabras clave, contextos y datos. 

El contexto específico y relevante para la tarea siempre mejorará los resultados. Otros recomiendan que las instrucciones se coloquen al comienzo de la indicación.

También se recomienda que se use un separador claro como "###" para separar la instrucción y el contexto.

Prompt:

```none
### Instrucción ###

Traduce el texto a continuación al español:
Texto: "Hello!"
```

Resultado:

```none
¡Hola!
```

### Especificidad

Sé muy específico en la tarea que le pides al modelo. 

Cuanto más descriptiva y detallada sea tu instrucción (*prompt*), mejores resultados obtendrás.

Esto es crucial cuando buscas un resultado o estilo de generación concreto. No hay palabras clave mágicas, pero un buen formato y una instrucción detallada son esenciales.

Proporcionar ejemplos en tu *prompt* es muy efectivo para obtener la salida deseada con el formato específico que necesitas.

### Longitud

Cuando diseñas *prompts*, también debes tener en cuenta la longitud del *prompt* ya que hay limitaciones en cuanto a su longitud. Pensar en cuán específico y detallado debes ser es algo a considerar. 

Incluir demasiados detalles innecesarios no es necesariamente un buen enfoque. Los detalles deben ser relevantes y contribuir a la tarea en cuestión. Esto es algo en lo que necesitarás experimentar mucho.

Como ejemplo, intentemos una indicación simple para extraer información específica de un texto.

Prompt:

```none
Extrae los nombres de lugares del siguiente texto.
Formato deseado:
Lugar: <lista_separada_por_comas_de_nombres_de_empresa>
Input: "Aunque estos avances son alentadores para los investigadores, aún hay mucho misterio.
'A menudo tenemos una caja negra entre el cerebro y el efecto que vemos en la periferia', dice
Henrique Veiga-Fernandes, un neuroinmunólogo en el Centro Champalimaud para lo Desconocido en Lisboa.
'Si queremos usarlo en el contexto terapéutico, necesitamos entender el mecanismo'.
```

Resultado:

```none
Place: Centro Champalimaud para lo Desconocido, Lisboa
```

### Evitar imprecisión

Dado los consejos anteriores sobre ser detallado y mejorar el formato, es fácil caer en la trampa de querer ser demasiado inteligente sobre los temas y crear descripciones imprecisas. A menudo es mejor ser específico y directo. La analogía aquí es muy similar a la comunicación efectiva: cuanto más directa sea, más efectivo será el mensaje.

Por ejemplo, podrías estar interesado en aprender el concepto de ingeniería de prompts.

Prompt:

```none
Explica el concepto de ingeniería de promoción. Mantén la explicación corta, solo unas pocas frases y no seas demasiado descriptivo.
```

No está claro en la instrucción anterior cuántas oraciones utilizar y qué estilo. Es posible que puedas obtener respuestas aceptables con el prompt anterior, pero un prompt que sea muy específico, conciso y directo sería mejor.

```none
Usa 2-3 oraciones para explicar el concepto de ingeniería de prompt a un estudiante de secundaria.
```

### Indicar lo que no debe hacer

Otro consejo común al diseñar prompts es evitar decir qué no hacer, sino decir qué hacer en su lugar. Esto fomenta la especificidad y se centra en los detalles que conducen a buenas respuestas del modelo.
Aquí hay un ejemplo de un chatbot de recomendación de películas que no cumple exactamente lo que no quiero que haga debido a cómo escribí la instrucción, centrado en lo que no hacer.

Prompt:

```none
El siguiente es un agente que recomienda películas a un cliente.
NO PIDA INTERESES. NO PIDA INFORMACIÓN PERSONAL.
Cliente: Por favor, recomiéndeme una película basada en mis intereses.
Agente:
```

Resultado:

```none
Claro, puedo recomendar una película según tus intereses. ¿Qué tipo de película te gustaría ver?
¿Prefieres acción, comedia, romance o algo más?
```

Este es un *prompt* mejor:

Prompt:

```none
El siguiente es un agente que recomienda películas a un cliente. El agente es responsable de recomendar una película de las más populares a nivel mundial. Debe abstenerse de preguntar a los usuarios por sus preferencias y evitar pedir información personal. Si el agente no tiene
una película para recomendar, debe responder "Lo siento, no pude encontrar una película para recomendar hoy".
Cliente: Por favor, recomiéndeme una película basada en mis intereses.
Agente:
```

Resultado:

```none
Lo siento, no tengo información sobre tus intereses. Sin embargo, aquí está una lista de las películas más populares a nivel mundial en este momento: [lista de películas]. Espero que encuentres algo que te guste.
```

## Tipos de prompts y sus aplicaciones

### Prompts de completación

Estos prompts requieren que el modelo complete una frase o párrafo iniciado.
Prompt: “El sol brillaba intensamente mientras…”
Posible respuesta: “…los niños jugaban alegremente en el parque.”

### Prompts de pregunta-respuesta

Diseñados para obtener información específica del modelo.
Prompt: “¿Cuál es la capital de Francia?”
Respuesta esperada: “La capital de Francia es París.”

### Prompts de instrucción

Estos prompts dan una instrucción clara al modelo sobre qué hacer.
Prompt: “Escribe un poema corto sobre la primavera.”
Posible respuesta:
“Flores de colores despiertan, Suave brisa acaricia el alma, Renace la vida, la tierra se calma, Primavera, tu belleza nos alienta.”

### Prompts de rol

Piden al modelo que asuma un papel específico al responder.
Prompt: “Actúa como un chef profesional y dame una receta para hacer paella.”
Posible respuesta: “Como chef profesional, te recomiendo esta receta de paella valenciana…”

### Prompts de formato

Solicitan al modelo que presente la información en un formato específico.
Prompt: “Crea una lista de compras con 5 elementos en formato JSON.”
Posible respuesta

## Problemas de la IAG

Errores comunes: alucinaciones, sesgos y dependencia excesiva

**Alucinaciones**. La IA genera información falsa o sin sentido.

Causas: Datos de entrenamiento insuficientes o de baja calidad, errores en el modelo de IA.

Soluciones: Verificar la información generada por la IA con fuentes externas, utilizar modelos de IA más robustos y bien entrenados.

**Sesgos**. La IA refleja los sesgos presentes en los datos de entrenamiento.

Causas: Datos de entrenamiento no representativos de la población real, sesgos inherentes a los algoritmos de IA.

Soluciones: Utilizar datos de entrenamiento diversos y representativos, aplicar técnicas de mitigación de sesgos en los algoritmos de IA.

**Dependencia excesiva**. Confiar ciegamente en los resultados generados por la IA sin un análisis crítico.

Causas: Falta de conocimiento sobre cómo funciona la IA, exceso de confianza en la tecnología.

Soluciones: Desarrollar habilidades de pensamiento crítico, comprender las limitaciones de la IA, verificar los resultados con el sentido común y el conocimiento del negocio.

![alt text]({{ site.baseurl }}/assets/images/02_Monalisa.png)

### Riesgos de la dependencia excesiva

- Falta de pensamiento crítico: Aceptar los resultados de la IA sin cuestionarlos ni verificarlos.
- Sesgos: La IA puede perpetuar sesgos presentes en los datos de entrenamiento.
- Errores: La IA puede cometer errores, especialmente en tareas complejas o ambiguas.
- Pérdida de habilidades: Depender demasiado de la IA puede llevar a la pérdida de habilidades humanas importantes

Estrategias para evitar la dependencia excesiva

- Verificar los resultados: Siempre verificar los resultados generados por la IA antes de utilizarlos.
- Comprender las limitaciones: Ser consciente de las limitaciones de la IA y no esperar que haga cosas que no puede hacer.
- Mantener el pensamiento crítico: Cuestionar los resultados de la IA y buscar explicaciones alternativas.
- Desarrollar habilidades humanas: No dejar que la IA reemplace habilidades humanas importantes.

### Sesgos

La IA refleja y perpetúa los sesgos presentes en los datos con los que fue entrenada, lo que puede resultar en representaciones desproporcionadas o estereotipadas de ciertos grupos.

Ejemplos:

Un modelo de IA para selección de personal muestra una preferencia por candidatos de un determinado género o etnia.
Un sistema de reconocimiento facial tiene una tasa de error más alta para personas de ciertas razas.

Causa: Los datos de entrenamiento pueden ser incompletos, desequilibrados o reflejar prejuicios existentes en la sociedad

- Análisis de Datos: Examinar los datos de entrenamiento para identificar posibles sesgos (desequilibrios en la representación de diferentes grupos, estereotipos implícitos).
- Pruebas de Equidad: Evaluar el rendimiento de la IA en diferentes grupos demográficos (medir la precisión, la tasa de falsos positivos y la tasa de falsos negativos para cada grupo).
- Auditorías Éticas: Realizar auditorías independientes para identificar y mitigar sesgos (involucrar a expertos en ética y diversidad).

Ejemplo Práctico

Escenario: Un modelo de IA para selección de personal muestra una preferencia por candidatos masculinos. De hecho, es un caso real: <https://www.bbc.com/mundo/noticias-45823470>

![alt text]({{ site.baseurl }}/assets/images/02_Sesgos.png)

Actividad: ¿Qué harías para investigar y corregir este sesgo? (Analizar los datos de entrenamiento, evaluar el rendimiento del modelo en diferentes grupos, utilizar algoritmos de des-sesgo).

### Alucinaciones

La IA “inventa” información que no es real, generando texto plausible pero sin fundamento en la verdad o en datos confiables.
![alt text]({{ site.baseurl }}/assets/images/02_Alucinaciones.png)

Ejemplos:

- ChatGPT proporciona una fuente inexistente para respaldar una afirmación.
- Un *chatbot* inventa detalles personales sobre un usuario.
- Un asistente de código sugiere una función que no existe en la API.

La causa principal reside en el funcionamiento de los modelos LLM. Estos modelos no cuentan con una base de datos real de hechos verificados, sino que generan texto prediciendo qué palabras (*tokens*, para ser precisos) probablemente seguirán a palabras anteriores, basándose en patrones aprendidos a partir de datos de entrenamiento masivos.

Los problemas con los datos de entrenamiento también influyen. Si el conjunto de entrenamiento contenía imprecisiones o contenido ficticio, el modelo podría reproducirlas.

## Limites según el uso

**Preguntas y respuestas / Chatbots**.Las alucinaciones se manifiestan como datos falsos pero dichos con confianza (ciudades inventadas, citas mal atribuidas, políticas erróneas). Esto puede llevar a desinformación seria, especialmente en contextos delicados como soporte legal o atención al cliente.

**Generación de código**. El modelo puede generar código que parece correcto pero tiene errores: funciones inexistentes, APIs mal usadas, código que no compila o introduce vulnerabilidades. Esto es especialmente riesgoso si se usa sin revisión humana.

**Narrativa y escritura creativa**. Aunque lo inventado es esperado, puede haber incoherencias con la lógica o el tono de la historia (como incluir autos en una historia medieval). En textos largos, puede perder contexto y desviar la trama.

**Confianza vs. Veracidad**. Un sello típico de las alucinaciones es que el modelo responde con seguridad aunque esté equivocado. Incluso insiste si se le pide repetir o aclarar.

### Estrategias de Detección

- Verificación Cruzada: Siempre verificar la información generada por la IA con fuentes confiables (bases de datos, documentos oficiales, expertos en el tema).
- Preguntas Críticas: Cuestionar la lógica y la coherencia de las respuestas, buscando inconsistencias o contradicciones.
- Conocimiento del Dominio: Utilizar tu propio conocimiento del tema para identificar información falsa o incorrecta.

Ejemplo Práctico

Escenario: ChatGPT te da una lista de “expertos en *marketing* digital en Argentina.

Actividad: ¿Cómo verificarías si esos expertos son reales y si tienen la experiencia que ChatGPT dice que tienen? (Buscar en LinkedIn, consultar sus sitios *web*, verificar sus publicaciones).
