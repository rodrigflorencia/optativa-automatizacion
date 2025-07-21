---
layout: default
title: "Integracion"
nav_order: 03
---

<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Integracion</title>
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

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
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
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            margin: 2rem 0;
            border-collapse: collapse;
        }

        th,
        td {
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
            <h2 id="integracion-de-las-aplicaciones">Integración de las aplicaciones</h2>
            <p>La integración de datos es el proceso de combinar información proveniente de múltiples fuentes para crear
                una visión unificada y coherente de la información. Aunque generalmente se asocia con el proceso ETL
                (Extracción, Transformación y Carga) para fines analíticos en un Datawarehouse, la integración de datos
                puede ir mucho más allá.</p>
            <h2 id="tipos-de-integracion-de-las-aplicaciones">Tipos de integración de las aplicaciones</h2>
            <h3 id="integracion-punto-a-punto-point-to-point">Integración punto a punto (point-to-point)</h3>
            <p>Es el tipo de integración más sencillo, ya que consiste en que un desarrollador establezca una conexión
                entre dos aplicaciones para que compartan información. La desventaja de esta integración es que cuando
                las aplicaciones y los sistemas sufren modificaciones, los desarrolladores tienen que crear manualmente
                una nueva conexión para cada aplicación o caso práctico nuevo, lo cual puede ocasionar problemas y
                dificultar su adaptación.</p>
            <h3 id="integracion-de-distribucion-y-enlace-hub-and-spoke">Integración de distribución y enlace
                (hub-and-spoke)</h3>
            <p>Este tipo de integración crea un intercambio central de mensajes para gestionar las conexiones entre
                aplicaciones diferentes. Se lo puede comparar con hacer una conexión en un aeropuerto para ir de una
                ciudad a otra, en lugar de tomar un vuelo directo. Gracias a cada conexión con el centro de
                distribución, se evita la necesidad de utilizar una integración punto a punto.</p>
            <p>Un enfoque para la integración de distribución y enlace es la integración de aplicaciones empresariales
                (EAI), en el que la aplicación de la integración funciona como centro. Otro enfoque es el bus de
                servicios empresariales (ESB), que envía mensajes entre los servicios. Son conceptos relacionados, por
                lo que a veces se considera al ESB como un método específico para implementar la EAI.</p>
            <h3 id="plataforma-de-integracion-como-servicio-ipaas">Plataforma de integración como servicio (iPaaS)</h3>
            <p>iPaaS es un servicio basado en la nube que gestiona varias funciones de integración de las aplicaciones.
                Gracias a la automatización, facilita la conexión de aplicaciones y datos implementados en cualquier
                entorno. </p>
            <h3 id="integracion-de-los-datos">Integración de los datos</h3>
            <p>Se suele hablar de integración de aplicaciones e integración de datos como equivalentes, pero los
                conceptos y los usos de cada una son diferentes.</p>
            <p>La integración de datos, a veces denominada "procesamiento de datos basado en lotes", genera una
                ubicación central para acceder a los datos de distintas fuentes. Por lo general, la integración de datos
                ocurre una vez que finalizan los procesos de las aplicaciones. Las empresas la utilizan para analizar el
                rendimiento y garantizar la uniformidad y la calidad de los datos.</p>
            <p>Imagine una gran empresa con distintos departamentos, en la que cada uno tiene sus propios datos. La
                integración de datos permite que estos departamentos los compartan, los analicen y colaboren entre
                ellos.</p>
            <h2 id="ejemplos-y-casos-practicos-de-la-integracion-de-las-aplicaciones">Ejemplos y casos prácticos de la
                integración de las aplicaciones</h2>
            <p>Uno de los motivos principales por los que las empresas adoptan estrategias de integración de las
                aplicaciones es para modernizar los sistemas heredados, lo cual suele estar vinculado con las prácticas
                actuales como la integración ágil. A continuación, se describen algunos ejemplos de la manera en que la
                integración de las aplicaciones puede mejorar la gestión de las empresas.</p>
            <h3 id="integracion-de-las-aplicaciones-en-los-sistemas-y-los-partners">Integración de las aplicaciones en
                los sistemas y los partners</h3>
            <p>Los sistemas de planificación de recursos empresariales (ERP), como SAP, son centros importantes de todo
                tipo de actividades comerciales en una empresa. Los sistemas de ERP ofrecen mejores resultados cuando
                pueden trabajar con información de otras aplicaciones y servicios. Por ejemplo, pueden agilizar el pago
                de nómina o mejorar la eficiencia de la cadena de suministro. Los sistemas de gestión de relaciones con
                el cliente (CRM), como Salesforce, también pueden beneficiarse de la integración de las aplicaciones al
                permitir que los equipos de soporte brinden un servicio más personalizado o que los equipos de ventas
                sean más eficientes.</p>
            <h3 id="salud">Salud</h3>
            <p>La integración de aplicaciones facilita el intercambio de datos de los pacientes entre los proveedores de
                salud y las empresas de seguros. Un ejemplo es la integración con los sistemas de historias clínicas
                electrónicas (EHR), que permite que los proveedores de salud tengan acceso a más información de los
                pacientes para mejorar la calidad de la atención.</p>
            <h3 id="fabricacion-venta-minorista-y-comercio-electronico">Fabricación, venta minorista y comercio
                electrónico</h3>
            <p>En los sectores de fabricación y venta minorista, las aplicaciones conectadas pueden supervisar las
                líneas de producción y los ciclos de vida de productos para asegurarse de que se fabriquen y envíen los
                productos correctos a los clientes indicados. Con respecto a la fabricación y la distribución, los
                dispositivos conectados y las aplicaciones integradas trabajan en conjunto para identificar problemas en
                la producción, conservar la calidad, facilitar la logística y controlar los costos.</p>
            <h3 id="servicios-bancarios">Servicios bancarios</h3>
            <p>Si alguna vez utilizó una aplicación bancaria en su dispositivo móvil para pagar facturas, es posible que
                se haya beneficiado de la integración de las aplicaciones. Gracias a las aplicaciones integradas, los
                clientes pueden acceder y gestionar su dinero e interactuar con productos y servicios relacionados, como
                los préstamos y las hipotecas. La integración de las aplicaciones ayuda a las instituciones financieras
                a ofrecer mejores servicios internos y orientados a los clientes, reducir los costos de la TI y mejorar
                la experiencia de los desarrolladores.</p>
            <h2 id="ventajas-de-la-integracion-de-las-aplicaciones">Ventajas de la integración de las aplicaciones</h2>
            <ul>
                <li>Entornos conectados: La integración de las aplicaciones aporta flexibilidad y opciones a los
                    desarrolladores, como distintas maneras de conectarse a extremos diferentes. Permite que los
                    usuarios accedan a datos a los que no tendrían acceso de otra manera. Al utilizar el edge computing,
                    la integración de las aplicaciones permite que las empresas distribuyan los recursos en varias
                    ubicaciones, lo cual se traduce en servicios más confiables y ágiles.</li>
                <li>Adopción rápida de tecnología nueva: La integración orientada a las API y la EDA permiten que los
                    desarrolladores incorporen tecnologías nuevas más rápido. Estos métodos posibilitan transiciones
                    empresariales más ágiles y oportunas. </li>
                <li>Productividad: Las plataformas integradas aportan eficiencia y flexibilidad. Por ejemplo, acceder a
                    los datos a través de una API puede resultar mucho más sencillo que recurrir directamente a una
                    plataforma de hosting. Gracias a la integración, se conectan las aplicaciones implementadas en
                    entornos diferentes, ya sea que se encuentren en las instalaciones, en la nube o en los dispositivos
                    del Internet de las cosas (IoT) en el extremo de la red.</li>
                <li>Reducción de costos y ajuste simplificado: Cuando una empresa necesita ajustar la capacidad, una
                    estrategia de integración de las aplicaciones simplifica el proceso para realizar modificaciones.
                    Los conectores de aplicaciones y las API posibilitan que las empresas no tengan que empezar desde
                    cero a la hora de agregar o ampliar integraciones nuevas. Por lo tanto, se ahorra tiempo y se
                    reducen costos mientras las empresas obtienen nuevas fuentes de ingresos.</li>
                <li>Mejoras de la experiencia del usuario: Los clientes obtienen mejores resultados cuando las
                    aplicaciones que utilizan están conectadas entre sí. Al combinar los sistemas, las empresas ofrecen
                    una experiencia digital unificada, de modo que los clientes pueden acceder a diversos servicios
                    desde un mismo lugar.</li>
            </ul>
            <h2 id="desafios-de-la-integracion-de-las-aplicaciones">Desafíos de la integración de las aplicaciones</h2>
            <p>A pesar de sus ventajas, la integración de las aplicaciones implica modificaciones y complejidades
                nuevas, lo cual puede presentar desafíos.</p>
            <ul>
                <li>Complejidad: La integración de las aplicaciones y los procesos empresariales representan tanto un
                    desafío empresarial como uno organizativo, ya que se requiere coordinar equipos y sistemas
                    diferentes. Un proyecto de integración puede volverse más complejo cuando primero se deben
                    automatizar procesos manuales.</li>
                <li>Gestión de aplicaciones personalizadas: La conexión de aplicaciones aisladas o integraciones
                    personalizadas puede implicar tareas de codificación que llevan mucho tiempo.</li>
                <li>Problemas de seguridad: Conservar la confidencialidad y la integridad de la información es un
                    requisito esencial de la mayoría de las empresas. Los equipos necesitan garantizar que las
                    aplicaciones integradas cumplan con los estándares de control de datos y seguridad de la información
                    de la empresa.</li>
            </ul>
            <h2 id="aspectos-que-se-deben-considerar-para-las-soluciones-de-la-integracion-de-las-aplicaciones">Aspectos
                que se deben considerar para las soluciones de la integración de las aplicaciones</h2>
            <p>Se deben tener en cuenta los siguientes factores a la hora de evaluar las soluciones de integración de
                las aplicaciones.</p>
            <ul>
                <li>Facilidad de uso y accesibilidad de conocimientos: Hay más probabilidades de que el proyecto de
                    integración de las aplicaciones tenga éxito cuando se elige una solución que le resulta sencilla a
                    personas con distintos niveles de conocimiento. La facilidad de uso logra que los flujos de trabajo
                    sean más eficientes e incentiva su adopción.</li>
                <li>Flexibilidad de las aplicaciones y los entornos: Las aplicaciones pueden ejecutarse en diversos
                    entornos, y permanentemente aparecen nuevos que lo hacen en línea. Las soluciones de integración
                    deben adaptarse a esta flexibilidad. En muchos casos, la solución gestionada y basada en la nube
                    será la primera que respalde nuevos sistemas de software y garantice la compatibilidad óptima en las
                    plataformas.</li>
                <li>Seguridad: Las soluciones de integración deben ofrecer funciones de seguridad integrada, como el
                    cifrado, la autenticación y la autorización. Estas medidas protegen los datos confidenciales y
                    evitan el acceso no autorizado a ellos.</li>
            </ul>
            <p>Además de estos aspectos, es una buena idea que las empresas utilicen un entorno de desarrollo integrado
                (IDE), que es un sistema de software que combina herramientas comunes para desarrolladores en una sola
                interfaz de usuario gráfica (GUI). Los IDE permiten que los desarrolladores comiencen a programar
                aplicaciones nuevas con rapidez, ya que no necesitan establecer ni integrar manualmente varias
                herramientas como parte del proceso de configuración.</p>
<div>
                <iframe
    src="https://hub.2i2c.mybinder.org/user/rodrigflorencia--automatizacion-yxxyzd4m/notebooks/_apuntes/03A_Chat.ipynb"
    width="100%"
    height="1000px"
    style="border: 1px solid #ddd; border-radius: 8px;"
    allowfullscreen>
</iframe>
</div>
            
            <div>
<iframe
    src="https://nbviewer.jupyter.org/github/rodrigflorencia/optativa-automatizacion/blob/main/_apuntes/03A_Chat.ipynb"
    width="100%"
    height="1000px"
    style="border: 1px solid #ddd; border-radius: 8px;"
    allowfullscreen>
</iframe></div>

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
