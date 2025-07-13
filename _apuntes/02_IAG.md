---
layout: default
title: "IAG"
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

![Prompts](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQezvT6_QztH17B9lOVvOIROviAn8ITAlMhLQ&s)

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

![alt text]({{ site.baseurl }}/assets/images/02_Amazon.png)

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

Escenario: [ChatGPT](https://chat.openai.com/) te da una lista de “expertos en *marketing* digital en Argentina.

Actividad: ¿Cómo verificarías si esos expertos son reales y si tienen la experiencia que [ChatGPT](https://chat.openai.com/) dice que tienen? (Buscar en [LinkedIn](https://www.linkedin.com/), consultar sus sitios *web*, verificar sus publicaciones).

### HErramientas de IAG

Windsurf

![alt text](data:image/png;base64,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)

RelevanceAI

![alt text](data:image/jpeg;base64,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)

Monica

![alt text](data:image/jpeg;base64,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)

Lovable

![alt text](data:image/jpeg;base64,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)

OpenAI

![alt text](data:image/png;base64,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) 

HuggingFace

![alt text](data:image/jpeg;base64,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)

