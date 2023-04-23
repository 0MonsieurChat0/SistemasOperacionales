## 1. Compare las diferencias entre la planeación a corto plazo y largo plazo.

- La planeación a largo plazo se enfoca en seleccionar adecuadamente los procesos futuros y garantiza que siempre haya una lista de procesos listos para ser ejecutados en la CPU, m
- Por otro lado, la planificación a corto plazo se enfocará en los procesos que ya están listos para ser ejecutados en ese mismo momento y debe decidir el orden en el cual el proceso debe ser ejecutado en la CPU.

## 2. Caracterice dos procesos que se puedan considerar a mediano plazo.

***- Procesos de carga:*** Estos procesos se encargan de cargar archivos en el sistema operativo. Pueden tomar algún tiempo en completarse, pero Su ejecución tampoco puede esperar demasiado tiempo por lo que se consideran procesos a mediano plazo.
***- Procesos de comunicación:*** Estos procesos se encargan de la comunicación entre dispositivos en el sistema. Requieren cierta preparación antes de su ejecución aun así no es necesario que se realice inmediatamente por lo que se consideran procesos a mediano plazo.

## 3. Describa las acciones que toma el kernel para el cambio de contexto entre procesos.

-  El cambio de contexto se refiere a la forma en que el sistema operativo pasa de ejecutar un proceso a otro. El kernel toma varias acciones para realizar esta tarea, como guardar el estado actual del proceso en ejecución, cargar el estado del siguiente proceso y actualizar las estructuras de datos relevantes. Todo esto se hace para asegurar que los procesos puedan ejecutarse de manera eficiente y segura en el sistema operativo.
***1. Guardado del contexto actual:*** El kernel guarda el estado actual del proceso que está siendo ejecutado. Esto incluye los valores de los registros de la CPU, el valor del puntero de pila y otros datos relevantes.
***2. Selección del siguiente proceso a ejecutar:*** el kernel selecciona el siguiente proceso a ejecutar. Esta selección puede ser aleatoria o estar basada en una prioridad asignada a cada proceso.
***3. Carga del contexto del siguiente proceso:*** El kernel carga el contexto del siguiente proceso que se va a ejecutar. Esto incluye los valores de los registros de la CPU, el valor del puntero de pila y otros datos relevantes.
***4. Restauración del contexto:*** El kernel restaura el estado del nuevo proceso, de forma que la CPU continúa ejecutando el código del nuevo proceso a partir del punto donde fue interrumpido.
***5. Ejecución del nuevo proceso:*** El kernel permite que el nuevo proceso se ejecute y se lleve a cabo su actividad normal



El cambio de contexto puede ser costoso en términos de tiempo de ejecución, ya que implica guardar y restaurar grandes cantidades de datos. Por esta razón, el kernel intenta minimizar el número de cambios de contexto que se producen en el sistema, para maximizar la eficiencia del mismo.

## 4. Defina las ventajas y desventajas desde el punto de vista del programador para comunicación síncrona y asíncrona.

### Tipo de comunicación.

**- Comunicación Sincronica**

- Ventajas
1. Permite que la interacción sea más rapida, fluida y eficiente entre los individuos involucrados.
2. Logra que haya mayor claridad y entendimiento en las discusiones que se lleven acabo debido a que los participantes pueden interactuar y compartir información en tiempo real.
3. Hace que el oriceso de tima de desiciones sea más efectivo y eficaz.

- Desventajas 
1. Puede ser en ciertos casos más complicado coordinar los procesos debido a las diferencias de tiempo y ubicación en la que se encuentre.
2. Es probable que se generen inconvenientes debido a la conectividad o a la tecnología de la cuak se haga uso, cosa que en general afecta la calidad que hay eb la comunicación.
3. Pueden haber interrupción o distracciones, cosa que puede afectar la interacción.

**- Comunicación Asincrónica**

- Ventajas
1. La coordinación entre los usuarios es mucho mayor y no se hace necesario sincronizar horarios.
2. La comunicación entre los participantes es mucho más libre, por lo cual pueden interactuar entre sí, sin limitaciones de tiempo o lugar.
3. Debido a las oocas limitaciones de tiempo que poseen, los participantes tienen más flexibilidad a la hora de responder, lo cual les permitirá dedicar tiempo a sus comentarios.

- Desventajas
1. Debido a que hay tanta flexibilidad en los procesos y tomas de decisiones, es más complicado mantener el hilo de los procesos y y esto ouede generar errores en la comunicación.
2. Es posible que slgunos procesos se ignoren o se retrasen, por ello sería en ocasiones más lento el proceso y se ralentiza todl el sistema de comunicación.
3. Debido a que cada proceso de comunicación es separado se generan problemas grandes con la tima de decisiones y también se ve afectado con más problemas debido a su tardía resolución.
