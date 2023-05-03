# 1. Describa dos ejemplos en los que los mecanismos multihilo no proporcionen un mejor rendimiento que el monohilo.

***- Tarea secuencial:*** Cuando una tarea implica procesamiento secuencial de datos como cálculo matemático o análisis de datos, para estos casis el hacer uso de multihilos no es muy útil ya que el procesamiento de estos datos no se puede dividir en tareas paralelas de modo adecuado. Entonces, en este tipo de casos usar múltiples hilos no va a mejorar el rendimiento por lo que solo un hilo es quien llevará acabo toda la tarea.

***- Tareas pequeñas:*** Cuando una aplicación debe procesar una carga de trabajo pequeña y además no tiene tareas que puedan ser ejecutadas en paralelo, es aquí que el uso de hilos adicionales puede introducir una sobrecarga y llegar a disminuir el rendimiento. Para estos casos se debe tener en cuenta el costo de la creación y gestión de hilos adicionales, el mantenimiento de puede ser mayor que el beneficio de realizar tareas en paralelo y en estos casos sería mejor ahorrar presupuesto.

# 2. Describa las acciones que toma una biblioteca de hilos para cambiar el contexto entre hilos de nivel de usuario.

- Debe programar una interrupción en un intervalo regular de tiempo que permitirá a la biblioteca cambiar cual será el hilo activo.
- Es necesario seleccionar un hilo adecuado que  será ejecutado en función de su estado y prioridad.
- Guardar el contexto del hilo activo actual en una estructura de datos que se almacena en memoria de nivel de usuario.
- Restaurar el contexto del hilo seleccionado previamente desde la estructura de datos en la memoria de nivel de usuario.
- Se establecerá un nuevo hilo como activo y debe ser este quien continue con la ejecución del proceso en ese hilo nuevo.

# 3. Los valores de los registros son componentes del estado de un programa, se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

No, los valores de los registros no se comparten entre hilos de un proceso multihilo.
Los valores de los registros son casi como una "memoria temporal" que es utilizado por la CPU para almacenar datos y realizar cálculos mientras se ejecuta un programa. Cada hilo en un proceso multihilo tiene su propio conjunto de registros, por lo que los valores de los registros no se comparten entre los hilos. 
Cada hilo tiene su propia pila de llamadas y memoria local, incluyendo sus propios registros. De esta manera, los hilos pueden ejecutarse de forma independiente sin interferir entre sí en cuanto al uso de registros y otros recursos de la CPU.
Si los valores de los registros se compartieran entre los hilos, se producirían conflictos y se comprometería la integridad de los datos, lo que podría llevar a resultados impredecibles e inesperados en la ejecución del programa.

# 4. Los cúmulos de memoria se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

Si, Los cúmulos de memoria (como el heap y el stack) tienden a compartirse entre los hilos de un proceso multihilo, cada hilo tiene su propia pila de ejecución y registros de CPU. Significa que todos los hilos tienen acceso a la misma memoria compartida entonces los hilos pueden acceder y modificar los mismos datos en memoria . Pero, cada hilo tiene su propio stack y registros, que no se comparten entre los hilos.


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
