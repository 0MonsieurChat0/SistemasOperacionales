# Solución Taller N°2
## 1. En entornos compartidos, los usuarios comparten el sistema. Esto puede dar lugar a varios problemas de seguridad.

### ◦ Mencione dos problemas y expliquelos.

En el curso de redes II tuve la oportunidad de conoces sobre algunos de los ataque más usuales y todos los problemas de seguridad a los que este tipo de entorno se ven expuestos:

1. Ataques de denegación de servicio(DoS): Unos de los ataques más conocidos es el DoS que siempre tiene como objetivo saturar el tráfico de la red o también con solicitudes maliciosas, todo esto provocando que a los usuarios les sea inaccesible, logrando afectar a todos los usuarios que comparten el sistema. Pudiendo a veces generar inconvenientes para las empresas de productividad ya que básicamnete todo aquél que dependa de este sistema para trabajar le resultará imposible.

2. Manejo da la información o uso de Software no autorizado: Como bien lo comentaba en clases el profesor, actualmente la manera más fácil de obtener la información que las personas quieren siempre será más fácil si se engaña al usuario por medio de multiples modos. Entre ellas es que su manejo de la información confidencial no sea la adecuada y esto conlleve a exponer información confidencial e incluso accceder al sistema, además también otro método es que los usuarios hagan uso de software malicioso que contenga virus, spyware o malware permitiendo que el hacker tenga control sobre el sistema.

### ◦ Es posible asegurar el mismo grado de seguridad en un sistema compartido que en un sistema dedicado. Explique su respuesta

Como se dijo en la respuesta número 2 del anterior punto, si bien es posible que los sistemas compartidos puedan ser bastante seguros al implementar varias politicas de seguridad que los usuarios deben cumplir, además de mayores controles como por ejemplo la doble autenticación no es posible asegurar el mismo grado de seguridad en un sistema compartido con respecto a un sistema dedicado. Un sistema compartido está compuesto de varios usuarios quienes tienen acceso al mismo sistema y es por esto que hay más puntos de vulnerables potenciales para los atacantes o para errores humanos. 

  Sí hacemos la comparación con un sistema dedicado, estos normalmente están restringidos solo para el acceso a un número predeterminado de usuarios autorizados y se les aplican políticas de seguridad más restrictivas. Logrando que sea mucho más fácil controlar y asegurar la información, lo cual hay menos riesgo de errores o intrusiones no autorizadas.

## 2. Un problema común en los OS es la utilización de recursos. Enumere los recursos que deben gestionarse en las siguientes maquina (explique porqué):

***◦ Sistemas embebidos/integrado:*** Es un sistema de computación diseñado para hacer tareas específicas que se encuentran integrados como un todo en lo que se llama comúnmente placa madre o plac abase.
Estos sistemás pueden ser microcontroladores o microprocesadores o pueden usar leguajes como C y C++. Por lo general están diseñados para hacer computación en tiempo real, además se sabe que estos incluyen la memoria, la CPU, almacenamiento y además de ello es muy importante el control adecuado de la energía.

***◦ Mainframe:*** Se puede decir qe son megacomputadoras de gran tamaño que a día de hoy son usadas en el entorno empresarial para encargarse del manejo de datos en grandes cantidades.
Sus entre los recursos más importantes a tener en cuenta al momento de gestionar un mainframe se encuentran la CPS, la red, el almacenamiento, la memoría y algunos de los dispositivos de entrada y salida.

***◦ Workstation:*** Son maquinas de alto rendimiento utilizadas mayormente en ambientes de diseño, edición de videos y muchos trabajos que requieren gran capacidad de procesamiento.
Como en los anteriores, los recursos importantes a tener en cuenta para el manejo de los mismos son la memoria, la CPU, almacenamiento  y además de la tarjera gráfica.

***◦ Server:*** En nuestro ámbito los servidores son uno de los más conocidos por su gran importancia en cualquier tipo de empresa, ya que estos son usados para alojar y distribuir aplicaciones de serviocios en la red.
Los recursos de gran importacia que se gestionan para estas infraestructuras son la memoria, el almacenamiento de gran cantidad de información en muchos casos, la CPU, también en la red y otros dispositivos de entrada y salida.

***◦ Mobile:*** Para los dispositivos móviles como celulares, tablets e incluso los nuevos relojes smart debido a su estructura tan compacta presentan grandes problemas en términos de memoria, capacidad de procesamiento y almacenamiento.
Los recursos que se deben gestionar en este tipo de servicios incluyen la memoria, CPU, bateria, almacenamiento y lo dispositivos de entrada y salida.

## 3. Caracterice dos casos de uso para implementar un OS para servidor y PC.

***◦ Servidor:*** Es necesario cuando se pretende alojar sitios o plaicativos web, estos a su vez deben presentar un servicio estable además que tambien debe ser seguro para los usuarios, de modo que se garantice la disponibilidad para el usuario a cualquier momento, el acceso seguro y eficiente.

***◦ Para un PC:*** En la edición de audio y video se manejan aplicaciones que requieren una gran cantidad en potencia de procesamiento y memoria. Un sistemas operativo está en la capacidad de proporcionar una plataforma eficiente que ejecute aplicaciones de edición para este ámbito y permite que los usuarios realicen tareas complejas de edición y creación de contenido de manera eficiente y a su vez debe proporcionar una interfaz intuitiva y fácil de usar para los usuarios.

## 4. Compare las diferencias entre multiprocesamiento simétrico y asimétrico.

En sus diferencias más remarcables podemos encontrar las siguientes:

**◦ Diseño del sistema:**

*- Multiprocesamiento simétrico (SMP):*
- Todos los procesadores comparten los mismos recursos del sistema, también tienen la misma capacidad y función e incluso accede a los mismo recursos del sistema.

*- Multiprocesamiento asimétrico (ASMP):*
- Todos los procesadores de dividen en grupos y cada uno tiene una función y tarea específica, y cada uno tiene recursos del sistema.

**◦ Escalabilidad:**

*- Multiprocesamiento simétrico (SMP):*
- Una de sus caracteristicas principales es qe tiene gran afinidad y escalabilidad, permitiendo agregar procesadores adicionales al sistema y además de aumentar la capacidad de procesamiento.

*- Multiprocesamiento asimétrico (ASMP):*
- Este no es tan fácilmente escalable ya que los procesadores son diseñados para cumplir funciones predeterminadas que incluso añadiendo nuevos procesadores no se verá afectado el rendimiento de la misma.

**◦ Rendimiento:**

*- Multiprocesamiento simétrico (SMP):*
- Tienen mejor rendimiento en tareas que requieren una abundante cantidad de procesamiento paralelo ya que pues en conjunto cuando todos los procesadores trabajan en simultaneo se nota el aumento de rendimiento.

*- Multiprocesamiento asimétrico (ASMP):*
- Tiene un mejor rendimiento en tareas que se pueden dividir en tareas más pequeñas, ya que cada grupo de procesadores puede trabajar en diferentes tareas simultáneamente.

**◦ Costo:**

*- Multiprocesamiento simétrico (SMP):*
- Suele ser más costoso debido a que los procesadores tienen las mismas capacidades y funciones por lo que en muchos casos se desperdician recuersos

*- Multiprocesamiento asimétrico (ASMP):*
- Debido a que los procesadores para este tipo de tecnología está focalizada para cumplir con los requeriemintos no se hace desperdicio de recursos.

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

◦ Sistema distribuido 
◦ Sistema multiprocesador 
◦ Sistema de un solo procesado
