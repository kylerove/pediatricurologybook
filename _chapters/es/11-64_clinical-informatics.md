---
section: 11
chapter: 64
sort-key: 11-64
title: Informática clínica
description: El capítulo 64 profundiza en un concepto de informática clínica cada vez más importante y en cómo abordarlo y aplicarlo en la urología pediátrica.
thumbnail: 11-64_clinical-informatics-es.png
authors:
  -
    author-id: 4
  -
    author-id: 9
layout: chapter
lang: es
breadcrumbs:
  - 
    title: Inicio
    permalink: /
  - 
    title: Libro
    permalink: /book/
toc: true
js: /assets/js/pages/chapter.js
review-formatting-complete: 2025-09-14 KR
page_id: 11-64_clinical-informatics
---

## Introducción

Cada vez existe un reconocimiento generalizado de que la pericia clínica y la pericia en tecnología de la información no siempre se superponen, especialmente a medida que los dominios por separado han avanzado por el camino de la subespecialización. ¿Alguna vez ha tenido dificultades para transmitir a la mesa de ayuda qué no está funcionando en la historia clínica electrónica (EMR)? ¿Alguna vez una "actualización" del EMR le ha parecido una "degradación" del flujo de trabajo clínico? Esta es una brecha que experimentan la mayoría de las organizaciones sanitarias, y cada vez más organizaciones están estableciendo programas de informática clínica para cerrar esa brecha.
{:.drop-caps}

**Un especialista en informática clínica (a veces denominado informático), es un profesional clínico con conocimientos y formación especializados en sistemas de información clínica, por lo general centrados en el EMR.** La informática clínica se ha expandido en la última década hasta convertirse en una especialidad propia, con formación y certificación por junta. Algunas especialidades han dependido de estos especialistas desde hace mucho más tiempo que la urología o la cirugía, incluidas la patología (interfaces de sistemas de laboratorio) y la radiología (interfaces PACS). Pero a medida que los EMR avanzan y más de nuestros flujos de trabajo se digitalizan, incluso los cirujanos se ven afectados por la brecha antes mencionada, y es cada vez más imperativo contar con profesionales quirúrgicos formados en el EMR que estén en la mesa para las decisiones que afectan nuestra práctica.

La informática clínica también puede definirse por lo que no es: médicos que usan una computadora, médicos que utilizan software clínico (en cualquier nivel de competencia), o médicos que realizan análisis de datos o investigación. Históricamente, el joven campo de la informática clínica ha tenido dificultades para transmitir qué es lo que hacemos, y expresar lo que no somos es un ejercicio útil para enfatizar la definición. [Figura 1](#figure-1){:.figure-link} demuestra parte de la superposición y las funciones de la informática clínica con el campo de la analítica de datos. De manera similar, [Figura 2](#figure-2){:.figure-link} muestra cómo la superposición entre el sistema de salud, la atención clínica y la tecnología y los sistemas de información conduce a diferentes dominios de especialización, con la informática clínica en el centro.

![Figura 1]({{ site.url }}{{ site.baseurl }}/assets/figures/figure-64-1.svg){:.float-start .img-fluid}  
**Figura 1**{:#figure-1}{:.figure-number} La informática clínica, como campo, tiene cierta superposición y relación con la analítica (que en muchos sistemas de salud es incipiente), pero cada una posee elementos únicos que la distinguen de la otra.

**Figura 2**{:#figure-2}{:.figure-number} Los dominios superpuestos en y alrededor de la atención clínica diferencian la
![Figura 2]({{ site.url }}{{ site.baseurl }}/assets/figures/figure-64-2.svg){:.float-start .img-fluid}   informática clínica de dominios como la mejora de la calidad y la seguridad del paciente y la mesa de ayuda de tecnología de la información. La informática clínica se sitúa en la intersección de los tres dominios más amplios, la atención clínica, el sistema de salud y la tecnología de la información y las comunicaciones.

## Definiendo EMR---Qué es

Existen varios términos utilizados para referirse a los registros médicos informatizados, incluido el título de esta revisión, registro médico electrónico (EMR). Pero, ¿qué constituye un EMR? Los EMR pueden consistir en una única aplicación grande (p. ej., Epic o Cerner o AllScripts) con licencia y mantenida por una organización de prestación de atención como un hospital o o una clínica privada, o también pueden consistir en múltiples aplicaciones separadas. El término registro electrónico de salud (EHR) se utiliza ocasionalmente como sinónimo de EMR, pero se define como un concepto separado y diferenciado de un portal orientado al paciente que permite el acceso a registros de múltiples organizaciones de prestación de atención y unifica la información en un solo lugar. [Tabla 1](#table-1){:.table-link} proporciona una comparación entre EMR, EHR e intercambios de información de salud (HIE), que también están adquiriendo una importancia regional creciente para facilitar un intercambio de información electrónico, seguro, eficiente y oportuno entre organizaciones.

Más allá de definir el EMR, también existen medidas de cuán avanzadas son las capacidades e integraciones dentro del EMR, definidas por HIMSS.{% cite anon-a --file 11-64 %} Al definir estas etapas, las organizaciones pueden comparar sus capacidades (funcionalidades e integraciones que impactan la seguridad del paciente, la seguridad de los datos y la eficiencia/satisfacción de los clínicos) entre sí. La definición de cada etapa{% cite anon-a rule2021a maguire2020a kuhn2015a kahn2018a downing2018a rosenbloom2011a --file 11-64 %} incluye las capacidades de esa etapa más todas las de las etapas inferiores. La etapa más avanzada es la etapa 7 de HIMSS. Estas se muestran en [Tabla 2](#table-2){:.table-link}.

**Tabla 1**{:#table-1}{:.table-number} Diferencias entre un Registro Médico Electrónico (EMR) y un Registro de Salud Electrónico (EHR) y el Intercambio de Información de Salud (HIE). Los EMR pueden consistir en una única aplicación grande (p. ej., Epic o Cerner), propiedad de y mantenida por una organización de prestación de atención sanitaria como un hospital, un sistema hospitalario o una clínica privada, o también pueden constar de múltiples aplicaciones. Un HIE, en cambio, facilita el intercambio de información entre EMR utilizando terminologías estandarizadas (p. ej., ICD-10 y SNOMED para diagnósticos, CPT para procedimientos, códigos LOINC para pruebas de laboratorio, etc.). Los HIE son cada vez más comunes. Ejemplos de un EHR incluyen Apple Health o Google Health, que pueden recopilar e integrar información de forma segura de múltiples entidades.

| EMR                                                                  | EHR                                                                                  | HIE                                                                                                                                                                                               |
|----------------------------------------------------------------------|--------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Propiedad de la organización de prestación de atención sanitaria (hospital, sistema hospitalario, clínica) | Propiedad del paciente o de otra parte interesada                                    | Entidad independiente con acuerdos con múltiples organizaciones para compartir automáticamente información estandarizada (p. ej., medicamentos, inmunizaciones, notas, resúmenes de alta, análisis de laboratorio, entre otros) |
| Contiene el registro médico legal de una sola organización           | Subconjunto de registros correspondientes a un solo paciente que abarca múltiples organizaciones | Facilita el intercambio de información con las organizaciones miembros                                                                                                                            |
| Una sola organización                                                | Puede abarcar áreas locales, regionales y nacionales                                 | Puede abarcar áreas locales, regionales y nacionales (p. ej., CORHIO HIE en el estado de Colorado)                                                                                                |
| Aplicación integrada o múltiples aplicaciones                        | Interfaz interactiva (portal web o aplicación móvil, típicamente utilizada por pacientes) | Interfaz interactiva (portal web o aplicación móvil, típicamente utilizada por los profesionales de la salud dentro de las organizaciones miembros) o puede integrarse/enviar/recibir datos directamente en el EMR de la organización |

**Tabla 2**{:#table-2}{:.table-number} Etapas de HIMSS de las capacidades de la HCE. La Etapa 7 es la más avanzada e incluye todas las capacidades indicadas *más* todas las capacidades e integraciones enumeradas para las etapas 1--6. Cada etapa incluye todas las capacidades de esa etapa y de todas las etapas inferiores.

| Etapa HIMSS | Capacidades                                                                                                                                                               |
|-------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Etapa 7     | HCE completa; transacciones de documento de continuidad de la atención (CCD) para compartir datos; almacén de datos; continuidad de datos con el departamento de emergencias (ED), ámbito ambulatorio y consulta externa (OP) |
| Etapa 6     | Documentación médica (plantillas estructuradas), sistemas de soporte a la decisión clínica (CDSS) completos (variación y cumplimiento), R-PACS completo                     |
| Etapa 5     | Administración de medicación en circuito cerrado                                                                                                                          |
| Etapa 4     | Entrada computarizada de órdenes médicas (CPOE), soporte a la decisión clínica (protocolos clínicos)                                                                      |
| Etapa 3     | Documentación de enfermería/clínica (hojas de flujo), CDSS (verificación de errores), PACS disponible fuera de radiología                                                |
| Etapa 2     | Repositorio de datos clínicos (CDR), vocabulario médico controlado, soporte a la decisión clínica, puede contar con digitalización de documentos; capaz de intercambio de información de salud (HIE) |
| Etapa 1     | Los tres sistemas auxiliares (SI de laboratorio, SI de radiología, SI de farmacia) instalados                                                                             |
| Etapa 0     | Los tres sistemas auxiliares (SI de laboratorio, SI de radiología, SI de farmacia) no instalados                                                                         |

## Ejemplos de Informática Clínica

### Estrategias de documentación y estandarización

La era de la HCE ha hecho cada vez más sencillo almacenar información del paciente, como notas, análisis de laboratorio, resultados de radiología y más. Esto también ha llevado a una prolongación drástica de la documentación, ya que las HCE hacen muy fácil incorporar esta información en una nota.{% cite rule2021a maguire2020a kuhn2015a kahn2018a --file 11-64 %} La consecuencia no deseada de esto es la tendencia de los clínicos a incluir información redundante de forma literal (p. ej., el informe completo de la ecografía renovesical) en sus notas de consulta y en las notas de evolución hospitalaria en lugar de resumir y señalar la relevancia de dicho resultado---lo que ha llevado a que la extensión de las notas de consulta se haya duplicado desde 2009.{% cite downing2018a --file 11-64 %}

Los especialistas en informática clínica están en una posición ideal para influir positivamente en esto al fomentar el uso y crear plantillas de documentación dentro del EMR. ¿Por qué es esto importante? Con demasiada frecuencia, los clínicos repiten tareas rutinarias una y otra vez, sin darse cuenta ni comprender que el EMR puede automatizar tareas y trabajo. Un buen ejemplo de esto es cuando en la consulta se atiende a pacientes con problemas frecuentes de urología pediátrica (p. ej., hipospadias, hidronefrosis, reflujo vesicoureteral, disfunción intestinal y vesical). Si se encuentra manteniendo la misma conversación con pacientes y familias y presentando opciones similares, una plantilla de nota clínica puede convertir 10 minutos de "reinventar la rueda" para documentar dicha conversación en un ejercicio de 30--60 segundos de completar los detalles clave en una plantilla de nota clínica que queda guardada en el EMR.

[Tabla 3](#table-3){:.table-link} proporciona una lista de los fenotipos de consulta externa de la plantilla de nota ***compartida*** para pacientes nuevos en mi organización. Observe la palabra ***compartida***: nuestro grupo ha optado por crear este recurso compartido para todos los proveedores. El beneficio de compartir es que hemos estandarizado la documentación para \~95% de los pacientes nuevos, que entran en esta lista, y todos los proveedores se benefician a medida que se corrigen los problemas y se perfecciona la plantilla.

**Tabla 3**{:#table-3}{:.table-number} Lista de plantillas de notas compartidas para pacientes nuevos en Children's Hospital Colorado a fecha de 2023.

| Plantillas para pacientes nuevos  |
|-----------------------------------|
| Anorrectal                        |
| Diferencias del desarrollo sexual |
| Micción disfuncional              |
| Disuria                           |
| Genérico                          |
| Hematuria                         |
| Hernia / hidrocele                |
| Hidronefrosis                     |
| Hipospadias                       |
| Adherencias labiales              |
| Fimosis del recién nacido         |
| Enuresis nocturna                 |
| Pene                              |
| Consulta prenatal                 |
| Dolor / masa / hinchazón escrotal |
| Defecto de la columna vertebral   |
| Litiasis                          |
| Masa testicular / microlitiasis   |
| Testículo no descendido           |
| Patología del uraco               |
| ITU                               |
| Varicocele / espermatocele        |
| Reflujo vesicoureteral            |

### Creación de datos discretos

Una enorme ventaja que el registro médico electrónico (EMR) tiene sobre los registros en papel radica en los datos estructurados, o discretos. Puede pensarse en los datos discretos como información que ha sido descompuesta en sus elementos básicos, etiquetada y almacenada de modo que pueda accederse a ella fácilmente. Dentro del EMR, gran parte de los datos importantes para la documentación clínica ya se han capturado de esta manera---fechas, nombres, signos vitales, valores de laboratorio, diagnósticos, etc. Estos datos pueden facilitar la atención directa del paciente y pueden aprovecharse para usos secundarios, incluidos el seguimiento de resultados y la investigación clínica.

Por lo general es sencillo incorporar datos discretos en las notas. Al hacerlo, los médicos deben ser cuidadosos para evitar la sobrecarga de las notas y estructurar sus plantillas para centrarse únicamente en los datos pertinentes. **Los datos discretos dentro de una HCE son de alta granularidad y, con suficiente personalización, los elementos de datos discretos pueden incorporarse en una nota sin sacrificar la legibilidad.** Por ejemplo, en lugar de importar un conjunto completo de tablas de laboratorio recientes, se puede configurar una frase en la plantilla para incluir solo el valor más reciente de creatinina y la fecha en que se obtuvo.{% cite rosenbloom2011a --file 11-64 %}

### Apoyo a la toma de decisiones clínicas

El soporte a la decisión clínica (CDS) se define como un "proceso para mejorar las decisiones y acciones relacionadas con la salud mediante conocimiento clínico pertinente y organizado e información del paciente, con el fin de mejorar la atención sanitaria y su prestación."{% cite osheroff-a --file 11-64 %} Los datos del EMR de un paciente pueden utilizarse para recomendar una acción específica o resaltar información importante. Las alertas emergentes son una forma común de CDS. [Tabla 4](#table-4){:.table-link} enumera los tipos, herramientas y ejemplos comunes de CDS en urología pediátrica.

**Tabla 4**{:#table-4}{:.table-number} Ejemplos de soporte a la decisión clínica (CDS) en urología pediátrica.

| Categoría                    | Herramienta                                                    | Beneficio                                                           |                                                                        Ejemplo                                                                       |
|------------------------------|----------------------------------------------------------------|---------------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------:|
| Entrada de datos             | Formulario inteligente (entrada de datos dinámica y guiada)    | Solicita dinámicamente la recopilación de datos clave y discretos   |                                Entrada de datos de urodinamia pediátrica que se ajusta según procedimientos/condiciones documentadas                |
|                              | Conjuntos de órdenes                                           | Estandariza la entrada de órdenes para la condición del paciente    |                                       Conjunto de órdenes posoperatorio de Recuperación Mejorada tras la Cirugía (ERAS) pediátrico                  |
| Revisión de datos            | Panel de enfermería ambulatoria de urología pediátrica         | Centraliza las tareas asignadas y proporciona una evaluación global de las responsabilidades | Enumera las llamadas posoperatorias pendientes, las tareas de educación del paciente, la revisión del grupo de mensajes de la bandeja de entrada y otras tareas de atención indirecta (p. ej., seguimiento de stents ureterales) |
| Evaluación y comprensión     | Botones informativos, enlaces integrados a materiales educativos | Brinda al clínico una oportunidad educativa en el momento           |                    Proporcionar un enlace a guías de profilaxis antibiótica quirúrgica específicas de urología pediátrica dentro de un conjunto de órdenes                    |
| Activado por tarea del usuario | Alertas en línea del flujo de trabajo                          | Útiles para notificaciones comunes                                  |                                                                Recordatorios de vacunación antigripal                                               |
|                              | Ventanas emergentes, alertas interruptivas                     | Útiles para mensajes importantes en los que se recomienda encarecidamente una acción |                                         Cambio de medicación sugerido porque la seleccionada está agotada                                           |
|                              | Notificación automatizada en la bandeja de entrada             | Alerta a los proveedores sobre una acción pendiente requerida        |                                                   Recordatorio para terminar la documentación en una historia clínica abierta                       |

Los "cinco correctos" del CDS son importantes de considerar al diseñar y construir nuevas herramientas: 1) información correcta, 2), persona correcta, 3) formato de intervención correcto, 4) canal correcto, 5) momento/flujo de trabajo correcto ([Tabla 5](#table-5){:.table-link}).{% cite campbell2013a --file 11-64 %} Estos conceptos ayudan a orientar la herramienta para evitar interrumpir a los miembros equivocados del equipo en los momentos equivocados con intervenciones que no son eficaces. Si bien, históricamente, las herramientas de CDS no siempre han mejorado la eficiencia, a medida que pasa el tiempo, sospechamos que esto mejorará.{% cite bright2012a patterson2018a murphy2014a --file 11-64 %}

**Tabla 5**{:#table-5}{:.table-number} Cinco derechos del CDS.

|           Correcto           |                                                                                                                          Explicación                                                                                                                         |
|:-------------------------:|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|     Información adecuada     |                                                                 La información debería presentarse al usuario idealmente basada en la evidencia (p. ej., guía) evitando demasiados detalles                                                                 |
|        Persona adecuada       |                                                                      La atención sanitaria moderna se basa en equipos y las intervenciones deben dirigirse al miembro adecuado del equipo que pueda actuar                                                                     |
| Formato de intervención adecuado |                                                                                            Debe seleccionarse una herramienta adecuada de la Tabla 2 que ayude al usuario                                                                                            |
|       Canal adecuado       | Cada vez hay más interfaces de EMR en todo el entorno sanitario, una sesión de consulta en un equipo de escritorio, panel de programación del quirófano, dispositivos portátiles, listas de pacientes impresas y más. Los diseñadores de CDS deberían seleccionar un canal óptimo para la intervención. |
|    Momento/flujo de trabajo adecuados    |                                               Las intervenciones deben dirigirse y probarse en escenarios del mundo real para garantizar que se entreguen en el momento correcto y en el flujo de trabajo correcto para ser eficaces.                                              |

## Formación en informática

La informática clínica se enseña ahora a través de programas de formación formal acreditados por GME. La certificación por la junta está disponible para quienes deseen formalizar su formación.{% cite lehmann2018a --file 11-64 %} Actualmente hay dos vías disponibles para la certificación por la junta (que se otorga tras aprobar un examen escrito) a través de la Junta Estadounidense de Medicina Preventiva: 1) vía de formación en informática clínica, en la que se puede presentar al examen de la junta después de completar una formación certificada de educación médica de posgrado (GME) (normalmente de un año), o 2) vía de práctica, que permite a quienes desempeñan funciones formales en su organización con al menos 0,25 de equivalente a tiempo completo dedicado. Esta última está disponible hasta 2023 (pero esta cláusula de derechos adquiridos se ha extendido varias veces, reconociendo que no todos los informáticos clínicos han recibido formación formal, sino que se han formado en el puesto de trabajo). Más información sobre los requisitos de certificación por la junta en informática clínica está disponible a través de la [Junta Estadounidense de Medicina Preventiva](https://www.theabpm.org/become-certified/subspecialties/clinical-informatics/).

## Gobernanza de la Historia Clínica Electrónica

Dada la complejidad del EMR, especialmente en aquellos con funcionalidad integrada para atención ambulatoria, laboratorio, farmacia, hospitalización, urgencias y quirófano, los cambios al EMR no pueden realizarse por un equipo pequeño sin la aportación de la organización. Muchos hospitales y sistemas con EMR de gran envergadura han creado comités de gobernanza que analizan y deciden sobre cambios importantes que podrían afectar a un amplio espectro de usuarios. Participar en estos comités puede proporcionar una perspectiva valiosa sobre nuevas funcionalidades de un EMR, puede ayudarle a evitar un cambio que podría afectar negativamente a su equipo, o proporcionar un espacio para discutir una función o un desarrollo que podría beneficiar a su grupo u organización.

## Liderazgo de Informática y Mesa de Ayuda

Muchos médicos han expresado frustración por no saber por dónde empezar cuando hay problemas o frustración con la situación actual. Conocer al liderazgo de TI e informática es un buen lugar para empezar. Muchas organizaciones (grandes y pequeñas) tienen a alguien designado para dirigir el equipo de TI (quizás llamado director de información o CIO). También es probable que haya alguien del ámbito clínico designado para actuar de enlace con el CIO y representar a los clínicos. En muchas organizaciones, esta persona es el director médico de informática o CMIO. Saber quiénes son estas personas en su organización es la mitad de la batalla. Pedirles que incluyan a personas designadas para representar sus intereses también es clave. Estos representantes designados deben tener interés en la informática (aunque no tengan formación formal) y estar facultados para tomar decisiones en nombre de su grupo, además de servir como alguien que pueda ayudar a facilitar el cambio, que se ha convertido en la nueva normalidad constante en la era de la HCE.

Más allá de interactuar con los líderes clave de su organización de atención médica, la mitad de la batalla en torno a los problemas del EMR proviene de una variación del concepto económico de la “tragedia de los comunes”. Aquí, un recurso compartido (en este caso, el EMR) se deja deteriorar como consecuencia de priorizar el interés propio (léase: el valioso tiempo del clínico y la suposición de que otros están atendiendo un problema) por encima de la atención y la mejora de dicho recurso. Más directamente, cuando los usuarios encuentran resultados inesperados en el EMR (nuevo error desconocido o una funcionalidad que no funciona), observamos que la mayoría de los usuarios buscan soluciones alternativas al problema en lugar de reportarlo a la mesa de ayuda. Debido a que el personal de TI no es clínico, muchos de estos problemas en el EMR pueden pasar desapercibidos durante días o más porque nadie los reporta a la mesa de ayuda. **No asuma que otros han reportado el problema.** Para abordar el tiempo que lleva llamar a la mesa de ayuda, delegue la tarea de notificar a la mesa de ayuda en un miembro del personal (por ejemplo, un asistente médico) y proporciónele suficiente información para transmitir el problema.

## Conclusión

La informática clínica es un área de práctica cada vez más importante para los urólogos. Contar con un miembro de su equipo o grupo que pueda representar sus intereses y buscar formación adicional para convertirse en experto en esta área probablemente rendirá dividendos en términos de eficiencia y productividad, y minimizará la fricción entre su equipo y el EMR.

## Puntos clave
{:.key-points-head}

- La informática clínica es un campo nuevo que aprovecha y reduce la brecha entre la atención clínica y los sistemas de tecnología de la información (con un enfoque particular en la HCE)
- Las HCE han incorporado cada vez más funciones para facilitar el acceso a radiología, farmacia, soporte para la toma de decisiones clínicas, laboratorio y funcionalidad de documentación que abarca la atención ambulatoria, hospitalaria, perioperatoria y de urgencias (nivel 7 de HIMSS)
- La complejidad adicional ha exigido que las organizaciones inviertan en equipos de informática clínica para garantizar un uso más eficiente de la HCE que refleje los flujos de trabajo y las prácticas existentes.
- Conocer a sus líderes de tecnología de la información (CIO) y de informática clínica (CMIO) es clave para garantizar que se representen sus intereses.
- Llame a la mesa de ayuda cuando se encuentre con algo inesperado. No caiga en la trampa de la tragedia de los comunes pensando que otra persona ya reportó el problema.
{:.key-points-list}

## Referencias

{% bibliography --file 11-64 %}

*[EMR]: historia clínica electrónica
*[PACS]: sistema de archivo y comunicación de imágenes
*[EMRs]: historias clínicas electrónicas
*[EHR]: registro de salud electrónico
*[HIE]: intercambio de información de salud
*[HIMSS]: Sociedad de Sistemas de Información y Gestión de la Atención Sanitaria
*[ICD]: Clasificación Internacional de Enfermedades
*[SNOMED]: Nomenclatura Sistematizada de Medicina
*[CPT]: Terminología de Procedimientos Actual®
*[LOINC]: Identificadores de Nombres y Códigos de Observaciones Lógicas
*[HIEs]: intercambios de información de salud
*[CORHIO]: Organización Regional de Información de Salud de Colorado
*[CCD]: documento de continuidad de la atención
*[ED]: servicio de urgencias
*[OP]: paciente ambulatorio
*[CDSS]: sistemas de apoyo a la decisión clínica
*[CPOE]: introducción informatizada de órdenes médicas
*[CDR]: repositorio de datos clínicos
*[IS]: sistemas de información
*[UTI]: infección del tracto urinario
*[CDS]: apoyo a la decisión clínica
*[ERAS]: recuperación mejorada tras la cirugía
*[GME]: formación médica de posgrado
*[IT]: tecnología de la información
*[CIO]: director de tecnologías de la información
*[CMIO]: director médico de informática
