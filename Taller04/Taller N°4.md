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
- El OS debe permitir a los usuarios y las aplicaciones reb¿nombrar y mover archivos dentro del sistema de archivos, debe contener funciones como nombres y ubicaciones de los archivos en el sistema y la actualización de las referencias a los archivos de ellos mismos en otros.

*- Renombrar/mover archivos:*
- El OS debe permitir la gestión de permisos y atributos de archivos para controlar el acceso, la seguridad y otras propiedades de los archivos.


## 5. Compare las ventajas y desventajas de usar la misma interfaz de llamadas al sistema para la manipulación de archivos como de dispositivos.

# Ventajas

***- Simplificación de la programación:***

Si se le da uso a la misma interfaz de llamadas al sistema en cuanto a la manipulación de datos, archivos y dospositivos es posible simplificar la programación de aplicacoiones, ya que los que se encargan de hacer el desarrollo de estos sistemas solo deben aprender a usar uan única interfaz

***- Mayor portabilidad:*** 

Si la misma interfaz de llamadas al sistema se utiliza para la manipulación de archivos y dispositivos en diferentes sistemas operativos, esto puede aumentar la portabilidad del código fuente de las aplicaciones. Las aplicaciones desarrolladas en una plataforma serán fácilmente portables a otras plataformas sin verse en la necesidad de reescribir completamente el código relacionado con la manipulación de archivos y dispositivos.

***- Mayor flexibilidad:*** 
Cuando se hace uso de la misma interfaz de llamadas al sistema para la manipulación de archivos y dispositivos, brindará mayor flexibilidad a las aplicaciones, ya que permite un enfoque más generalizado para el acceso a recursos del sistema.

# Desventajas

***- Dificultad en la gestión de recursos:***

Cuando los archivos y los dispositivos pertenecen a recursos diferentes y poseen características y comportamientos distintos. El uso de la misma interfaz de llamadas al sistema para ambos puede complicar la gestión de recursos, ya que puede haber diferencias en la forma en que se accede, se controla y se gestionan los recursos de archivos y dispositivos. Esto puede llevar a un código más complejo y difícil de mantener.

***- Pérdida de funcionalidades específicas:*** 

Los archivos y los dispositivos pueden tener funcionalidades específicas que no son compatibles con una misma interfaz de llamadas al sistema. Por ejemplo, algunos dispositivos pueden tener características de hardware específicas que no se pueden acceder o controlar mediante una interfaz de llamadas al sistema genérica. Esto puede limitar la funcionalidad de las aplicaciones que necesitan acceder a características específicas de dispositivos.


## **6. Conteste las siguientes preguntas.

#### * **Cuál es el propósito del interprete de comandos?**
La interfaz de línea de comandos (CLI, por sus siglas en inglés) es una forma en la que los usuarios pueden interactuar con la máquina a través de comandos de texto en lugar de una interfaz gráfica de usuario. El sistema operativo interpreta y ejecuta las instrucciones dadas por el intérprete de comandos en función de lo que se escribe en la terminal. Esto permite al usuario enviar comandos al sistema operativo y ejecutar acciones correspondientes a través de la línea de comandos.

#### * **Por qué está separado del kernel?**
La separación entre el intérprete de comandos y el kernel en un sistema operativo se realiza para lograr mayor flexibilidad y mantenibilidad del sistema. Además, contribuye a la seguridad del sistema operativo, ya que el intérprete generalmente se ejecuta con privilegios más bajos que el kernel, lo que implica restricciones de seguridad para proteger el sistema y los datos. Esta separación también permite la posibilidad de utilizar diferentes intérpretes de comandos con un mismo kernel, o viceversa, lo que brinda opciones y flexibilidad en la configuración del sistema operativo.

#### * **Liste los requisitos para desarrollar un interprete de comandos.**
Los requisitos para implementar un intérprete de comandos pueden variar según el sistema operativo y el entorno de desarrollo. Algunos posibles requisitos son:
- Conocimientos sólidos en programación, ya que el intérprete requiere de técnicas de programación adecuadas.- Conocimientos en el sistema operativo en el que se quiere implementar, tales como, la estructura del OS, el funcionamiento del kernel, la administración de procesos, gestión de memoria y otros conceptos relevantes del SO.
- onocimientos en el sistema operativo en el que se desea implementar, incluyendo la estructura del sistema operativo, el funcionamiento del kernel, la administración de procesos, la gestión de memoria y otros conceptos relevantes.
- Diseño de comandos, opciones, sintaxis, manejo de errores, historial de comandos, autocompletado y otros elementos de interfaz que brinden comodidad al usuario.
- Análisis y procesamiento de comandos, para ser capaz de analizar y procesar los comandos de manera precisa, incluyendo la sintaxis y la interpretación de los argumentos.
- Gestión de procesos y comunicación del sistema operativo, como la administración y terminación de procesos, redirección de entrada/salida, manipulación de variables de entorno y gestión de servicios.
- Gestión de errores, proporcionando mensajes de error claros y útiles al usuario en caso de comandos incorrectos o problemas en la ejecución.
- Documentación y soporte en donde todo esté bien especificado como la instrucciones de instalación, guía de uso, descripción de comandos y otras instrucciones relevantes para los usuarios.

## 7. Compare las ventajas y desventajas de los modelos de intercomunicación.

#### * **Modelo de señales/interrupciones**
***Ventajas:***
- Es simple y eficiente en términos de uso de recursos del sistema.
- Permite una comunicación rápida y asincrónica entre procesos.
- Es ampliamente utilizado en sistemas operativos embebidos y en sistemas de tiempo real.

***Desventajas:***
- Puede ser limitado en términos de la cantidad y tipo de información que se puede transmitir a través de señales o interrupciones.
- Puede ser difícil de depurar y mantener en sistemas complejos con múltiples señales e interrupciones.

#### **Modelo de mensajes**
***- Ventajas:***
- Puede ser utilizado para implementar una amplia gama de patrones de comunicación, como paso de mensajes, publicación/suscripción, y solicitud/respuesta.
- Permite la comunicación entre procesos de forma más flexible y versátil, ya que se pueden transmitir mensajes de diferentes tamaños y tipos.

***- Desventajas:***
- Puede ser más complejo de implementar y depurar en comparación con otros modelos de intercomunicación más simples.
- Puede requerir una mayor sincronización y gestión de la comunicación entre procesos para evitar problemas de concurrencia y seguridad.

#### * **Modelo de sockets**
***Ventajas:***
- Proporciona una interfaz estándar para la comunicación de red en sistemas operativos, lo que permite la interoperabilidad y la comunicación entre sistemas heterogéneos.
- Facilita la implementación de aplicaciones de red, como servidores y clientes, de manera modular y escalable.

***Desventajas:***
- Puede tener problemas de seguridad y privacidad si no se gestionan adecuadamente las conexiones y la comunicación en red.
- Puede tener un mayor overhead en términos de uso de recursos del sistema, debido a la encapsulación y desencapsulación de datos en la capa de red.

## 8. Conteste las siguientes preguntas.

#### * **Cual es la principal ventaja de usar microkernel en el diseño del OS?**
Es más fácil de modificar ya que al ser más pequeño es más simple, por lo tanto es más fácil de entender y depurar, y se encarga de proporcionar únicamente las funcionalidades básicas. También permite que los servicios del SO se puedan descargar y cargar dinámicamente como módulos, permite mayor escalabilidad ya que los servicios se pueden distribuir en multiples nodos y facilita la construcción de sistemas distribuidos.

#### * **Como interactúan los programas de usuario y los servicios del OS en una arquitectura 
basada en microkernel?**
Principalmente la comunicación sucede mediante el modelo de mensajes, es decir, los procesos se comunican intercambiando mensajes entre sí, los programas envían solicitudes al servicio del sistema y el servicio procesa la solicitud y devuelve una respuesta o realiza las acciones necesarias. Pero también se pueden utilizar otros métodos de comunicación que proporcione el microkernel. 

#### * **Cuales son las desventajas de usar la arquitectura de microkernel?**
- Posible reducción del rendimiento debido a la necesidad de comunicación entre procesos y el overhead asociado.
- Una mayor complejidad en la implementación y depuración de los servicios del SO como los procesos de usuario.

## **9. Compare las ventajas y desventajas de usar VM**

***- Ventajas:***
- Existe menor riesgo de afectar el equipo debido a que el ambiente aislado entre los sistemas operativos y las aplicaciones que se ejecutan en ellas no llegarán al sistema operativo principal.
- Permite que sea posible ejecutar múltiples OS en una misma máquina física, por lo cual su versatilidad de mucho mayor.
- Se pueden cambiar las particiones y el número de nucleos utilizados en cualquier momento para aprovechar de manera más optima los recursos de hardware.
- Se pueden crear imagenes del OS y aplicaciones permitiendo la portabilidad de las maquinas virtuales entre diferentes entornos de hardware.

***- Desventajas:***
- Pérdida de rendimiento debido a la virtualización: Las máquinas virtuales pueden introducir un overhead de rendimiento debido a la virtualización de hardware, lo que significa que podría experimentarse una disminución en el rendimiento de las aplicaciones que se ejecutan en ellas. 
- Si se utilizan múltiples sistemas operativos en un solo host a través de máquinas virtuales, la configuración y administración de estas máquinas puede volverse compleja. Esto se debe a que cada máquina virtual tiene sus propias configuraciones de sistema operativo, redes, almacenamiento, etc.
- Aunque son raros, existen riesgos potenciales de seguridad asociados con la tecnología de virtualización. Esto incluye posibles vulnerabilidades en la tecnología de virtualización misma, amenazas dentro de las máquinas virtuales (por ejemplo, malware o ataques internos) y riesgos de fuga de información entre máquinas virtuales en un mismo host.
