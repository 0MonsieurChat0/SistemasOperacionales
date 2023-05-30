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

# 5. Las variables globales se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

Sí, las variables son globales, por lo que serán accesibles y modificables por cualquier hilo en el proceso.
Todos los hilos de un proceso comparten un mismo espacio en memoria global, por lo tanto tienen acceso a los mismos datos y pueden efectuar cualquier cambio que se quiera realizar en la variable global, toda esta información será visible para todos los otros hilos que estén ejecutando el mismo proceso.
Se deben tener procesos planeados para los hilos que evitarán que varios acceden y modifiquen la variable global simultaneamente al mismo tiempo, de modo que se evitarán problemas por daños en la informacionó.

# 6. La memoria de pila se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

No, cada hilo tiene su propia pila. 
Como se dijo anteirormente cada hilo en un proceso multihilo tiene su propia memoria de pila, lo que significa que la memoria de pila no se compartirá entre los hilos. Cada hilo necesita su propia pila para almacenar las variables locales, los argumentos de función y la información de retorno específica del hilo que es la que retornará para que los hilos puedan interactuar entre ellos. La memoria de pila se utiliza para la gestión de la pila de llamadas y la administración de variables locales, por lo que compartir la memoria de pila podría dar lugar a interferencias y errores. Por lo tanto, cada hilo tiene su propia memoria de pila para garantizar la correcta gestión de las llamadas a funciones y las variables locales de cada hilo.

# 7.  En que ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor rendimiento que un solo hilo sobre un sistema monoprocesador.

Cuando se puede realizar procesamiento paralelo, mejorará la capacidad de respuesta, además de mejorar el rendimiento entrada/salida(E/S).

***- Procesamiento paralelo:*** Cuando la tarea se puede dividir en varias sub-tareas independientes, es aquí cuando se asignarán las sub-tareas a un hilo diferente. Lo cual permitirá que múltiples hilos trabajen simultáneamente y aceleren el proceso realizando la misma tarea simultaneamente.

***- Mejora de la capacidad de respuesta:*** En sistemas interactivos, como aplicaciones de usuario, múltiples hilos pueden mejorar la capacidad de respuesta del sistema. Cuando un hilo está esperando una nueva entrada por parte del usuario, otro hilo estará ejecutando procesos en segundo plano sin interrumpir el hilo encargado a la interfaz de usuario.

***- Mejora del rendimiento de entrada/salida(E/S):*** En aplicaciones que realizan operaciones de entrada y salida, como transferencia de archivos o descarga de datos de la red, usar múltiples hilos mejorará el rendimiento ya que permitirá que un hilo espere en una operación de entrada y salida mientras los demás hilos realizarán operaciones de procesamiento de datos, permitiendo que el profeso sea mucho más eficiente.


# 8. Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador?

En un sistema multiprocesador, una solución multihilo que utiliza varios hilos de usuario llega a alcanzar un mejor rendimiento si se compara con un sistema de un solo procesador. Esto es así porque los hilos se pueden distribuir entre los diferentes núcleos de procesador, permitiendo la simultáneidad en diferentes núcleos por lo cual se pueden reducir los tiempos de ejecución total de la tarea. Además, como cada  procesador tiene su propia caché permite que el rendimiento general del sistema sea superior. Por otro lado, en un sistema monoprocesador, los hilos deben compartir el tiempo de procesamiento en un solo núcleo, lo que puede generar cuellos de botella y retrasos. Asimismo, los hilos comparten la misma caché, lo que puede causar congestión y reducir el rendimiento del sistema.

# 9. Suponga que el numero de hilos del usuario es mayor que el numero de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel asignados al programa es menor que el numero de procesadores

Los hilos de usuario deberán de competir por el tiempo de procesamiento de los pocos hilos del kernel disponibles. Y esto puede provocar mayor latencia cuando se estén ejecutando los hilos de usuario, este problema generará retraso en la finalización de la tarea en general debido a la poca disponibilidad de hilos en el kernel.

Y si llegado el caso donde algunos hilos de usuario estén bloqueados esperando la finalización de una tarea de E/S, los hilos del kernel disponibles podrán estar inactivos hasta que se complete la tarea del hilo de usuario bloqueado. Lo cual sería aún peor para el rendimiento del sistema y pues un uso ineficiente de los recursos.
