# Solución Taller N°4
## 1. Las funciones y servicios proporcionados por el OS pueden dividirse en dos categorías, descríbalas.

- Funciones y servicios útiles al usuario: incluye la interfaz gráfica, la ejecución deprogramas, operaciones de E/S, file-system operation, communications, and 

- Funciones y servicios para garantizar la eficiencia del propio sistema: asignaciónde recursos, responsabilidad, protección y seguridad.


## 2. Enumere cinco servicios proporcionados por el OS diseñados para facilitar la comodidad del usuario.

*. Interfaz de usuario.*

*- Ejecución de programas.*

*- Operaciones de E/S, file-system manipulation.*

*- Comunicaciones.*

*- Detección de errores.*

## 3. Describa como se puede generar un informe estadístico de la cantidad de tiempo y recursos consumidos por un programa.

Generar un informe estadístico de la cantidad de tiempo y recursos consumidos por un programa generalmente implica el uso de herramientas de monitoreo y análisis del rendimiento del sistema operativo. Además se requiere de una serie de interrupciones periódicas del temporizador, en cadainterrupción se registra el valor de contador del programa, con interrupcionesfrecuentes de puede obtener una imagen estadística sobre varias partes de un programa.

***◦ Selección de herramientas:*** 

Identificar y seleccionar las herramientas apropiadas. Estas herramientas pueden incluir monitores de rendimiento integrados en el sistema operativo, software de monitoreo de terceros o herramientas de análisis de rendimiento específicas para el lenguaje de programación o entorno de desarrollo utilizado.

***◦ Inicio del monitoreo:*** 

Iniciar la herramienta de monitoreo seleccionada y configurarla para recopilar los datos relevantes sobre el tiempo y recursos consumidos por el programa. Esto puede incluir la monitorización del uso de la CPU, la memoria, el disco, la red y otros recursos del sistema que son importantes.

***◦ Ejecución del programa:*** 

Ejecutar el programa que se desea analizar y dejar que la herramienta de monitoreo registre los datos del rendimiento durante la ejecución del programa. Es importante asegurarse de que la herramienta de monitoreo esté registrando datos relevantes y en un nivel de detalle apropiado para el análisis estadístico.

***◦ Recopilación de datos:*** 

Después de que el programa haya finalizado su ejecución, detener la herramienta de monitoreo y recopilar los datos registrados durante la ejecución del programa. Estos datos pueden incluir información sobre el tiempo total de ejecución del programa, la cantidad de recursos consumidos (por ejemplo, uso de la CPU, la memoria utilizada, el tráfico de red, etc.) y otros indicadores relevantes del rendimiento del programa.

Es importante tener en cuenta que el proceso de generación de un informe de tiempo y recursos consumidos por un programa puede variar dependiendo de las herramientas de las cuales se haga uso, el sistema operativo. Es esencial seguir las mejores prácticas y utilizar herramientas confiables y adecuadas para el análisis del rendimiento del sistema operacional.

## 4. Enumere y describa cinco actividades de un OS enfocadas a la administración de archivos.

*- Crear:*
- El OS tiene la capacidad de crear nuevos archivos en el sistemas de archivos. Lo cual además tiene la capacidad de asignar espacio en disco para el nuevo archivo en una hubicacion del sistema y este le asigna un nombre y los permisos necesarios.

*- Borrar:*
- El OS debe permitir a los usuarios y a la aplicaciones de borrar archivos del sistema cuando se considere necesario borrarlo. Lo cual además implica librar el espacio en disco que estaba ocupado por el archivo y la eliminación de los registros y referencias al archivo en el sistema.

*- Leer/Escribir/Reposicionar:*
- El OS debe permitee a los usuarios y las aplicaciones leer y escribir datos en los archivos que existen en el el sistema. Archivos almacenados, así como la actualización de los datos en el archivos, lo cual implica que el OS debe hacer la busqueda en memoria del archivo y traerlo a disposición del usuario.

*- Renombrar/mover archivos:*
- El OS debe permitir a los usuarios y las aplicaciones reb¿nombrar y mover archivos dentro del sistema de archivos, debe contener funciones como nombres y ubicaciones



## 5. Enumere los requerimientos para que dos maquinas se junten en un cluster y provean un servicio de alta disponibilidad (HA).

***- Sistema operativo:*** Las máquinas deben ejecutar el mismo sistema operativo e igual versión, además que se debe configurar de manera similar

***- Hardware:*** Las máquinas deben tener hardware similar o compatible de modo que se pueda garantizar que los recursos para el sistema sea posible compartirlos sin problemas.

***- Monitorización y alertas:*** Es necesario implementar herramientas de monitorización y alertas para detectar y notificar cualquier problema en el clúster.

***- Copias de seguridad:*** Cuado se implementan las copias de seguridad y además se hacen planeas adecuados en caso de perdida de datos que puedan garantizar que los datos estén protegidos y además de eso también sea posible la restauración rápidamente en caso de una falla en el clúster, es ahí cuando relamente se ofrece un servicio de calidad.

## 6. Compare las diferencias entre una excepción y una interrupción.

En los sistemas operativos, las excepciones se emplea como una interrupción en el procesador el cual notifica al sistema operativo de un suceso importante.
Cuando para un proceso se utiliza una instrucción para dividir un valor utilizando el cero como denominador genera un error y este lo notifica.
Las interrupciones son causadas por eventos externos a la CPU, en general los errores tampoco afectan a los programas que se encuentre ejecutando en el momento.
Por otra parte, las interrupciones son un mecanismo de comunicación entre el procesador y los dispositivos de entrada y salida, indican que la operación de la que se estaba ocupando la CPU ya ha terminado. 
La principal diferencia entre estos dos conceptos es que las interrupciones son interrupciones de hardware, mientras que las excepciones son interrupciones que afectan directamente al software.

## 7. El DMA (acceso directo a memoria) se usa en dispositivos I/O para evitar uso innecesario de la CPU.

◦ ¿Como interactuá la CPU con el dispositivo para coordinar la transferencia? 

1. La CPU envía una solicitud al controlador de dispositivo para iniciar una operación de transferencia de datos.

2. El controlador de dispositivo interactúa con el dispositivo y envía una señal para indicar que se iniciará la operación de transferencia.

3. El controlador de dispositivo configura el dispositivo para realizar la operación de transferencia según lo especificado por la CPU.

4. El dispositivo lee o escribe los datos solicitados.

5. Cuando se completa la transferencia, el dispositivo envía una señal al controlador de dispositivo indicando que la operación ha finalizado.

6. El controlador de dispositivo informa a la CPU que la operación de transferencia se ha completado y proporciona los datos transferidos.

7. La CPU utiliza los datos transferidos según sea necesario para ejecutar la tarea solicitada.

◦ ¿Como sabe la CPU que las operaciones de memoria se han completado?

Cuando se completa la configuración del DMA, se puede visualizar que los datos se han transferido al dispositivo y a la memoria, y se haya monitoreado que la transferencia de datos se haya completado correctamente, el DMA notifica a la CPU mediante una interrupción generada por un pin dedicado en el DMA y se envía al controlador de interrupciones del sistema, luego el controlador de interrupciones interrumpe la CPU para que pueda tomar las medidas necesarias en consecuencia y procesar los datos transferidos, también prepara el DMA para la próxima transferencia.

## 8. Identifique dos razones por las que la cache es útil. ¿Qué problemas resuelve y causa?

La caché es una memoria de muy alta velocidad, puede acelerar el CPU. Debido a ser de tan alta velocidad se encarga de almacenar información e instrucciones para que el procesador acceda a éstas de manera inmediata siempre que lo necesite.
El caché tiene una capacidad limitada y más costosa que la memoria principal o el almacenamiento, por lo que se requieren políticas para decidir qué datos se almacenan, dónde se almacenan y cuándo se eliminan de la caché.
En algunos casos es la causa de problemas como la inconsistencia de datos, debido a una desincronización con la memoria principal.

## 9. Explique con un ejemplo, como se manifiesta el problema de mantener la coherencia de los datos de cache en los siguientes entornos: 

***◦ Sistema distribuido:***  varios nodos pueden tener copias de los mismos datos, y estos datos pueden ser actualizados por cualquier nodo en cualquier momento. Esto plantea un problema de coherencia de caché, ya que los nodos pueden tener copias diferentes de los datos en sus cachés, y estas copias pueden ser inconsistentes.

***◦ Sistema multiprocesador:*** Cuando los procesadores tienen una variable almacenada en sus cachés locales y alguno de los involucrados la incrementa y la escribe en la memoria principal, el otro procesador debe leer el nuevo valor y decidir si procesarla o invalidar su copia.

***◦ Sistema de un solo procesado:*** Cuando el dato es econtrado en caché y lo modifica y lo escribe en otro caché, debe escribir también el dato en un tercer caché o en la memoria principal.

