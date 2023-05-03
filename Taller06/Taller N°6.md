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

Sí, las variables globales, como su nombre lo indica, son globales, lo que les permite ser accesibles y modificables por cualquier hilo en el proceso.
Esto se debe a que todos los hilos de un proceso comparten el mismo espacio en memoria, y pues por lo tanto tienen acceso a los mismos datos y pues cualquier cambio realizado en una variable global por un hilo será visiable para todos los otros hilos del mismo proceso.
Es importante tener en cuenta que si varios hilos acceden y modifican la variable global simultaneamente, puede haber problemas y obtener resultados inesperados. Para esto se deben tener precauciones, utilizando mecanismos de sincronización y así garantizar que solo un hilo a la vez tiene acceso a la variable.

# 6. La memoria de pila se comparten entre los hilos de un proceso multihilo? Si, no y porqué?

No, cada hilo tiene su propia pila, que se utiliza para almacenar las variables locales, los argumentos de función y la información de retorno. Esto es porque
cada hilo necesita su propia pila para que las llamadas a funciones y las variables locales se puedan administrar correctamente sin interferencia entré sí.

# 7.  En que ocasiones una solución multihilo que usa múltiples hilos del kernel proporciona mejor rendimiento que un solo hilo sobre un sistema monoprocesador.

Puede proporcionar mejor rendimiento cuando se puede realizar procesamiento paralelo, mejorar la capacidad de respuesta y/o mejorar el rendimiento entrada/salida(E/S).
Explicando más a detalle las ocaciones mencionadas anteriormente:

***- Procesamiento paralelo:*** Si la tareaa realizar se puede dividir en varias sub-tareas independientes, entonces se puede asignar cada sub-tarea a un hilo diferente. Esto permite que múltiples hilos trabajen simultáneamente y aceleren el proceso, ya que pueden realizar diferentes partes de la tarea al mismo tiempo.
Pero que un solo hilo tenga que realizar cada sub-tarea secuencialmente puede que tarde más tiempo.

***- Mejora de la capacidad de respuesta:*** En sistemas interactivos, como aplicaciones de usuario, múltiples hilos pueden mejorar la capacidad de respuesta del sistema. 
Por ejemplo, si un hilo está esperando una entrada del usuario, otro hilo puede continuar procesando datos en segundo plano sin bloquear el hilo de la interfaz de usuario.

***- Mejora del rendimiento de entrada/salida(E/S):*** En aplicaciones que realizan operaciones de E/S intensivas, como transferencia de archivos o descarga de datos de la red, múltiples hilos pueden mejorar el rendimiento al permitir que un hilo espere en una operación de E/S mientras otro hilo realiza operaciones de procesamiento de datos.
Esto puede reducir el tiempo de espera y acelerar la tarea.

# 8. Puede una solución multihilo que utiliza múltiples hilos de usuario conseguir mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador?

Sí, una solución multihilo que utiliza múltiples hilos de usuario puede lograr un mejor rendimiento en un sistema multiprocesador que en un sistema de un solo procesador debido a la distribución de hilos entre diferentes núcleos de procesador y la capacidad de cada núcleo de tener su propia caché.

Recordemos que en el sistema multiprocesador los los hilos se pueden distribuir entre los diferentes procesadores, lo que permite que múltiples hilos trabajen simultáneamente en diferentes núcleos de procesador. Lo que permite acelerar el proceso y reducir el tiempo total de ejecución de la tarea. Y cada procesador tiene su propia caché, lo que mejora el rendimiento general del sistema.
En cambio, en el sistema monoprocesador  los hilos tienen que compartir el tiempo de procesamiento en un solo núcleo, lo que puede provocar cuellos de botella y retrasos. Y los hilos comparten la misma caché lo que puede provocar congestión.

# 9. Suponga que el numero de hilos del usuario es mayor que el numero de procesadores del sistema. Explique el impacto sobre el rendimiento cuando el numero de hilos del kernel asignados al programa es menor que el numero de procesadores

Lo que sucede en este caso, es que los hilos de usuario tendrán que competir por el tiempo de procesamiento de los pocos hilos del kernel disponibles. Y esto puede provocar mayor latencia en la ejecución de los hilos de usuario y un retraso en la finalización de la tarea en general.

Y si llegado el caso donde algunos hilos de usuario estén bloqueados esperando la finalización de una tarea de E/S, los hilos del kernel disponibles pueden estar inactivos mientras esperan a que se complete la tarea del hilo de usuario bloqueado. Esto provocaría aún más bajo rendimiento del sistema y pues un uso ineficiente de los recursos.
