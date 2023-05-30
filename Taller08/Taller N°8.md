# 1. Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo.

La diferenciación entre programas limitados por entrada/salida (E/S) y programas limitados por la unidad central de procesamiento (CPU) es crucial, ya que permite al planificador del sistema operativo optimizar la asignación de recursos. Esto conlleva a un uso eficiente de la CPU y una gestión adecuada de las operaciones de E/S, lo cual mejora el rendimiento global del sistema.

Un programa limitado por E/S implica que realiza frecuentemente operaciones de lectura o escritura con dispositivos externos, como discos duros, unidades USB, impresoras, monitores y altavoces, entre otros. Estas operaciones suelen ser más lentas que las operaciones de procesamiento de la CPU, lo que significa que el programa puede necesitar esperar a que se completen estas operaciones antes de continuar su ejecución. Con el fin de optimizar el uso de recursos, el planificador debe evitar que estos procesos consuman innecesariamente la CPU. Un planificador eficiente para este tipo de programa detectará cuando un proceso está esperando una operación de E/S y realizará un cambio a otro proceso que no esté en espera de dicha operación. Esto permite optimizar la asignación de recursos del sistema operativo y garantizar un uso eficiente de la CPU, lo que contribuye a mejorar el rendimiento general del sistema.

Por otro lado, un programa limitado por CPU se caracteriza por requerir principalmente el procesamiento de datos y cálculos complejos. Estos programas no realizan muchas operaciones de E/S y su rendimiento depende principalmente de la velocidad de la CPU y la cantidad de núcleos disponibles. En este caso, el planificador debe asegurarse de que los procesos que requieren más capacidad de CPU no sean interrumpidos innecesariamente por procesos que necesitan menos tiempo de CPU. El objetivo es maximizar la utilización de la CPU y garantizar que los procesos más intensivos en CPU puedan ejecutarse sin interrupciones, lo que contribuye a un mejor rendimiento del sistema.

# 2. Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario.

Cuando se prioriza en exceso el tiempo de respuesta en un sistema, puede limitarse la cantidad de procesos en ejecución, lo que implica interrumpir aquellos que utilizan intensivamente la CPU. Sin embargo, es crucial encontrar un equilibrio óptimo para maximizar la eficiencia y proporcionar una experiencia satisfactoria al usuario.

El planificador del sistema operativo debe tomar decisiones inteligentes, considerando la carga de trabajo y la capacidad de la CPU. El objetivo es optimizar el rendimiento general del sistema. Es importante evitar tanto la sobrecarga innecesaria, que podría ralentizar el sistema, como la ralentización excesiva, que podría afectar negativamente el tiempo de respuesta.

En resumen, encontrar el equilibrio adecuado en la planificación de procesos es fundamental para garantizar un funcionamiento fluido y eficiente del sistema, maximizando tanto la capacidad de respuesta como la utilización de los recursos de la CPU.

# 3. ¿Como entran en conflicto en determinadas configuraciones el tiempo medio de procesamiento y tiempo máximo de espera?

El equilibrio entre el tiempo medio de procesamiento y el tiempo máximo de espera es crucial para garantizar un funcionamiento eficiente del sistema y una experiencia satisfactoria para los usuarios.

El tiempo medio de procesamiento representa el promedio de tiempo necesario para completar los procesos, mientras que el tiempo máximo de espera establece el límite máximo de tiempo que un proceso está dispuesto a esperar antes de recibir una respuesta. Sin embargo, existe un conflicto potencial entre estos dos factores debido a la asignación de recursos y la priorización de procesos.

Si se prioriza en exceso el tiempo medio de procesamiento en detrimento del tiempo máximo de espera, los procesos que requieren más tiempo de CPU pueden recibir una ventaja injusta, dejando a los procesos más pequeños esperando indefinidamente en la cola de espera. Por otro lado, si se prioriza excesivamente el tiempo máximo de espera en detrimento del tiempo medio de procesamiento, los procesos que necesitan más tiempo de CPU pueden ser interrumpidos antes de su finalización, lo que afectaría la eficiencia del sistema y la calidad del servicio.

Por lo tanto, es fundamental encontrar un equilibrio adecuado entre el tiempo medio de procesamiento y el tiempo máximo de espera. Esto garantiza que todos los procesos tengan una oportunidad justa de completarse y que los procesos que requieren más tiempo de CPU no sean interrumpidos innecesariamente. Al lograr este equilibrio, se optimiza el rendimiento del sistema y se asegura una experiencia satisfactoria para los usuarios.

# 4. Como entran en conflicto en determinadas configuraciones la utilización de los dispositivos I/O y la utilización de la CPU?

Cuando un proceso necesita acceder a un dispositivo de entrada/salida, como un disco duro o una impresora, se envía una solicitud al controlador correspondiente. La CPU espera a que el controlador procese la solicitud antes de continuar. Sin embargo, si varios procesos requieren acceso al mismo dispositivo, puede haber inactividad en la CPU mientras el controlador atiende las solicitudes pendientes. Esto resulta en una baja utilización de la CPU y una ralentización del sistema.

Por otro lado, si la CPU está ocupada procesando otros procesos y no puede atender las solicitudes de entrada/salida, se crea un cuello de botella en el rendimiento. Los procesos en espera pueden experimentar retrasos significativos. Para evitar este conflicto, los planificadores deben equilibrar el uso de los dispositivos de entrada/salida y la CPU.

Un planificador de entrada/salida puede optimizar el uso de los dispositivos y reducir los tiempos de espera. Esto implica dar prioridad a los procesos que requieren acceso a los dispositivos de entrada/salida, de manera que la CPU esté disponible para atender sus solicitudes. De esta manera, se mejora la utilización de los recursos y se evita la ralentización del sistema debido a los conflictos entre la CPU y los dispositivos de entrada/salida.

# 5. Considere el siguiente conjunto de procesos, todos llegan al mismo tiempo en el orden del subíndice: Dibuje el diagrama de Gantt para FCFS, SJF, por prioridades (# de prioridad baja = a alta prioridad) y RR (cuanto = 1).

![Sin título](https://github.com/0MonsieurChat0/SistemasOperacionales/assets/100472763/11a99916-5036-4324-8f21-2baf0264201d)


# 6. ¿Cual es el tiempo de ejecución de cada proceso para cada algoritmo?

El tiempo de ejecución de cada proceso se ve afectado por el algoritmo de planificación implementado y las características individuales del proceso y el sistema en cuestión.

- FCFS (Primero en llegar, primero en ser atendido): El tiempo de ejecución de cada proceso se determina por el momento en que llega al sistema y la cantidad de tiempo de CPU que requiere. Los procesos se ejecutan en el orden de llegada, lo que significa que los primeros en llegar son los primeros en ejecutarse. Los procesos con mayores necesidades de tiempo de CPU tendrán una duración de ejecución más larga, lo que potencialmente puede retrasar la finalización de otros procesos.
- SJF (Primero el trabajo más corto): El tiempo de ejecución de cada proceso está determinado por los requerimientos de tiempo de CPU de cada uno. Los procesos se ejecutan en orden ascendente de duración, comenzando con el proceso que requiere menos tiempo de CPU. Al ejecutar los procesos más cortos primero, se puede reducir el tiempo de espera de los demás procesos.
- Round Robin (RR): El tiempo de ejecución de los procesos está vinculado al tiempo de cuantum establecido para el planificador. Los procesos se ejecutan en intervalos de tiempo iguales y luego se intercambian por el siguiente proceso en la cola. Aquellos procesos que necesitan más tiempo de CPU pueden requerir varios ciclos de cuantum para finalizar, lo cual puede impactar el tiempo de respuesta de otros procesos.

# 7. ¿Cual es el tiempo de espera de cada proceso para cada algoritmo?

El algoritmo de planificación implementado y las características individuales del proceso y el sistema afectan el tiempo de espera de cada proceso.

- En el caso del algoritmo FCFS (Primero en llegar, primero en ser atendido), el tiempo de espera de cada proceso se ve influenciado por el orden de llegada de los procesos anteriores. Si un proceso llega temprano y tiene una duración prolongada, los procesos posteriores deben esperar más tiempo antes de ser atendidos, lo que puede resultar en un aumento significativo del tiempo de espera.

- En el algoritmo SJF (Primero el trabajo más corto), el tiempo de espera de cada proceso está determinado por la duración del tiempo de CPU que cada proceso requiere y el orden en que los procesos llegan. Al dar prioridad a los procesos más cortos, se puede reducir el tiempo de espera de otros procesos, ya que se les brinda la oportunidad de ser ejecutados más rápidamente.

- En el algoritmo Round Robin (RR), el tiempo de espera de cada proceso depende del tiempo de cuantum establecido por el planificador y la cantidad de procesos en ejecución. Si el cuantum es demasiado pequeño, los procesos que requieren una gran cantidad de tiempo de CPU pueden demorar en finalizar, lo que resulta en un aumento del tiempo de espera para otros procesos en la cola de ejecución.

# 8. ¿Que algoritmo puede dar lugar a bloqueos indefinidos?

En la espera activa, un proceso que necesita acceder a un recurso compartido entra en un bucle continuo mientras espera a que el recurso se libere, verificando regularmente su disponibilidad. Sin embargo, existe el riesgo de que el proceso en espera pueda quedarse atrapado indefinidamente sin obtener el recurso si otros procesos lo adquieren y lo liberan constantemente. Este fenómeno se conoce como bloqueo por inanición.

El bloqueo por inanición puede ser problemático en sistemas críticos o en tiempo real, donde se requiere una respuesta rápida y predecible. Si un proceso importante se ve afectado por el bloqueo por inanición, puede resultar en retrasos significativos y afectar el rendimiento general del sistema.

Para evitar este problema, se pueden aplicar técnicas como el envejecimiento de procesos en espera. Esta técnica consiste en otorgar prioridad a los procesos que han estado esperando durante un período prolongado de tiempo. Después de cierto tiempo de espera, se les da prioridad para adquirir el recurso necesario, lo que garantiza que eventualmente puedan obtener acceso al recurso compartido y evitar el bloqueo por inanición. Esto ayuda a equilibrar la justicia en la asignación de recursos y evita que los procesos queden atrapados en una espera indefinida.


# 9. Considere un sistema que implementa una planificación por colas multinivel. ¿Que estrategia puede utilizar una computadora para maximizar la cantidad de tiempo de CPU asignada al proceso del usuario?

En un sistema con planificación por colas multinivel, se puede utilizar la estrategia de envejecimiento para aumentar la prioridad de los procesos que han estado esperando en una cola de baja prioridad durante un período prolongado. Esta estrategia asegura que estos procesos tengan la oportunidad de ejecutarse en algún momento, a pesar de estar en una cola de baja prioridad.

El envejecimiento implica incrementar gradualmente la prioridad de los procesos que han estado esperando durante mucho tiempo en una cola de baja prioridad. Esto garantiza que reciban una asignación justa de tiempo de CPU, incluso si su prioridad original era baja. Al aumentar su prioridad a lo largo del tiempo, se evita que los procesos de alta prioridad consuman completamente la CPU, ya que los procesos envejecidos también tienen la posibilidad de ejecutarse.

Es importante tener en cuenta que el envejecimiento no es la única estrategia utilizada en sistemas de planificación por colas multinivel. Otras técnicas, como la prioridad dinámica o el ajuste de los valores de cuantum para cada cola, también pueden ser efectivas en situaciones específicas. Cada técnica tiene sus propias ventajas y desventajas, y su elección dependerá de las características y requisitos del sistema en cuestión.
