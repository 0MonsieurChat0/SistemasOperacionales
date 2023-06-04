## 1. Explique la diferencia entre los conceptos de fragmentación interna y externa.

**- Fragmentación interna:**
Ocurre cuando se asigna más memoria de la necesaria para almacenar un proceso o dato en particular. Este proceso de da debido a que los sistemas de memoria asignan memoria en bloques de tamaño constante,es por esto que cuando el proceso o dato no ocupa exactamente el tamaño aprocpiado se desperdicia espacio.
La fragmentación interna ocurre dentro de un bloque de memoria asignado, donde hay espacio no utilizado debido a que no se puede compartir con otros procesos o datos. Este espacio no utilizado es inaccesible e inutilizable, lo que resulta en una pérdida de memoria efectiva. La fragmentación interna puede reducir la eficiencia del sistema y limitar la capacidad de ejecutar más procesos o almacenar más datos.

**- Fragmentación externa:**
Ocurre cuando hay suficiente memoria total disponible en el sistema, pero está dispersa en fragmentos no contiguos, lo que dificulta la asignación de memoria a procesos o datos que lo necesiten. A diferencia de la fragmentación interna, la fragmentación externa no desperdicia memoria en bloques asignados, pero crea un desorden en la memoria general del sistema. Esto puede ocurrir debido a la asignación y liberación dinámica de memoria a lo largo del tiempo, lo que puede resultar en espacios vacíos dispersos en la memoria. A medida que se asignan y liberan bloques de memoria, estos espacios vacíos pueden volverse demasiado pequeños para alojar procesos o datos nuevos, lo que da lugar a una fragmentación externa. La fragmentación externa puede hacer que sea difícil encontrar bloques de memoria contiguos lo suficientemente grandes para satisfacer las necesidades de memoria de un proceso, incluso si hay suficiente memoria total disponible.

## 2. ¿En que forma el editor de montaje cambia el acoplamiento de las instrucciones y los datos a direcciones de memoria?

El editor de ensamblador no altera directamente el acoplamiento de las instrucciones y los datos a direcciones de memoria. Su principal objetivo es proporcionar una interfaz y herramientas para editar y desarrollar código ensamblador. Durante el proceso de ensamblaje, el código fuente escrito en lenguaje ensamblador se traduce a instrucciones y datos que están vinculados a direcciones de memoria específicas.

El acoplamiento entre las instrucciones y los datos y las direcciones de memoria se establece en la fase de ensamblaje, cuando el código ensamblador se convierte en código de máquina ejecutable. El ensamblador asigna direcciones de memoria a cada instrucción y dato, y establece los puntos de referencia necesarios para que el programa se ejecute correctamente. El editor de ensamblador simplemente proporciona una interfaz para facilitar la edición del código fuente, pero no tiene influencia directa en el proceso de vinculación entre instrucciones, datos y direcciones de memoria.

## 3. ¿Que información debe pasar el compilador al editor de montaje para facilitar el acoplamiento de memoria de éste?

Para facilitar el acoplamiento de memoria, el compilador debe pasar cierta información al editor de montaje. Algunos de los datos clave que se deben proporcionar son:

***- Tabla de símbolos:*** El compilador genera una tabla de símbolos que contiene información sobre los símbolos definidos en el código fuente, como variables, funciones y etiquetas. Esta tabla incluye los nombres de los símbolos y las direcciones de memoria asociadas a cada uno.

***- Tabla de reubicación:*** La tabla de reubicación indica al editor de montaje qué partes del código deben ajustarse o "reubicarse" cuando se cargan en la memoria. Esto es necesario cuando se utilizan direcciones relativas o cuando se necesita cambiar las direcciones absolutas debido a la carga en una ubicación diferente en la memoria.

***- Información de tamaño y alineación:*** El compilador puede proporcionar detalles sobre el tamaño y la alineación de los diferentes elementos de código y datos. Esto es especialmente relevante en sistemas con restricciones de alineación de memoria o en arquitecturas donde el acceso a ciertos tipos de datos debe ser alineado correctamente para un rendimiento óptimo.

Estos datos permiten al editor de montaje realizar el proceso de vinculación y generación del código objeto final de manera adecuada. Al recibir esta información del compilador, el editor de montaje puede realizar la asignación de memoria, resolver las referencias simbólicas y aplicar los ajustes necesarios para lograr un acoplamiento correcto y eficiente en la memoria durante la ejecución del programa.

## 4. En el siguiente orden, se tienen cinco particiones de memoria de 100KB, 500KB, 200KB, 300KB, y 600KB. ¿Como situarían en memoria una serie de procesos de 212KB, 417KB, 112KB y 426KB en ese orden con los algoritmos de primer ajuste, mejor ajuste y peor ajuste? ¿Que algoritmo hace el uso más eficiente de la memoria?


***Con el algoritmo de primer ajuste, los procesos se ubicarían de la siguiente manera:***
- El proceso de 212KB se colocaría en la partición de 500KB (quedando 288KB libres).
- EL Proceso de 417KB se colocaría en la partición de 600KB (quedando 183KB libres).
- El proceso de 112KB se colocaría en la partición de 200KB (quedando 88KB libres).
- El proceso de 426KB no se puede colocar en ninguna partición disponible, ya que ninguna tiene suficiente espacio.

***Con el algoritmo de mejor ajuste, los procesos se ubicarían de la siguiente manera:***
- El proceso de 212KB se colocaría en la partición de 300KB (quedando 88KB libres).
- El proceso de 417KB se colocaría en la partición de 600KB (quedando 183KB libres).
- El proceso de 112KB se colocaría en la partición de 200KB (quedando 88KB libres).
- El proceso de 426KB se colocaría en la partición de 500KB (quedando 74KB libres).

***Con el algoritmo de peor ajuste, los procesos se ubicarían de la siguiente manera:***
- El proceso de 212KB se colocaría en la partición de 500KB (quedando 288KB libres).
- El proceso de 417KB se colocaría en la partición de 600KB (quedando 183KB libres).
- El proceso de 112KB se colocaría en la partición de 200KB (quedando 88KB libres).
- El proceso de 426KB se colocaría en la partición de 600KB (quedando 174KB libres).

*El algoritmo de mejor ajuste hace el uso más eficiente de la memoria, ya que busca la partición con el tamaño más cercano al del proceso, lo que minimiza el desperdicio de espacio. En este caso, el algoritmo de mejor ajuste logra ubicar todos los procesos, dejando menos espacio sin utilizar en comparación con los otros algoritmos.

## 5. La mayoría de OS permiten a los programas asignar más memoria a su espacio de direcciones durante la ejecución. ¿Que se necesitaría para soportar la asignación dinámica de memoria en los siguientes esquemas?

1. Asignación contigua de memoria.
Para permitir la asignación dinámica de memoria en un esquema de asignación contigua de memoria, es necesario contar con un sistema que permita asignar y liberar secciones de memoria de forma flexible. Esto implica utilizar técnicas como la reubicación de direcciones y tablas de asignación de memoria, que mantienen un registro del estado de cada bloque de memoria y de las regiones ocupadas y libres. Además, se necesita un algoritmo eficiente que encuentre espacios adecuados para asignar memoria y evite la fragmentación excesiva.
2. Segmentación pura.
La asignación dinámica de memoria implica la capacidad de crear y eliminar segmentos durante la ejecución. Para lograrlo, se requiere un sistema que permita asignar segmentos de memoria cuando los programas los soliciten y liberarlos cuando ya no sean necesarios. Esto implica mantener un seguimiento de los segmentos ocupados y libres en una tabla de segmentos y utilizar algoritmos de asignación adecuados para encontrar espacios libres de tamaño suficiente para los nuevos segmentos.
3. Paginación pura:
La asignación dinámica de memoria implica la capacidad de asignar y liberar páginas individuales de memoria. Se necesita un sistema que permita asignar páginas a medida que los programas las necesiten y liberarlas cuando ya no las utilicen. Esto implica mantener un mapa de bits o una tabla de páginas para controlar el estado de cada página y utilizar algoritmos eficientes para encontrar páginas libres y asignarlas según sea necesario.


## 6. Compare los esquemas de organización de la memoria principal basados en una asignación continua de memoria, en una segmentación pura y una paginación pura con respecto a:

***- Fragmentación externa:***
*- Asignación continua de memoria:* Alta posibilidad de fragmentación externa debido a la asignación de bloques de memoria contiguos sin reutilización eficiente de espacios libres.
*- Segmentación pura:* Baja posibilidad de fragmentación externa, ya que los segmentos pueden ubicarse en cualquier lugar de la memoria sin ocupar espacios contiguos.
*- Paginación pura:* No hay fragmentación externa, ya que las páginas pueden ubicarse en cualquier lugar de la memoria sin requerir continuidad física.

***- Fragmentación interna:***
  *- Asignación continua de memoria:* Alta posibilidad de fragmentación interna, ya que los programas deben ajustarse a los límites de los bloques de memoria, lo que puede dejar espacios sin utilizar.
  *- Segmentación pura:* No hay fragmentación interna, ya que cada segmento tiene un tamaño exacto que se ajusta a las necesidades del programa.
  *- Paginación pura:* Baja posibilidad de fragmentación interna, ya que las páginas tienen un tamaño fijo y se asignan de manera independiente a las necesidades de los programas.

***- Capacidad de compartir código:***
  *- Asignación continua de memoria:* Posibilidad de compartir código limitada, ya que los programas se cargan en ubicaciones específicas de memoria y no pueden compartir secciones de código.
  *- Segmentación pura:* Alta capacidad de compartir código, ya que los segmentos de código pueden asignarse a diferentes programas, lo que permite la reutilización y el compartimiento de código entre ellos.
  *- Paginación pura:* Alta capacidad de compartir código, ya que las páginas de código pueden asignarse a diferentes programas, permitiendo la reutilización y el compartimiento de código entre ellos.


## 7. En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad.

**1. ¿Por qué?**
En un OS con paginación, un proceso no puede acceder a una zona de memoria que no sea de su propiedad debido a que la paginación impone restricciones y protección de memoria para garantizar la seguridad y el aislamiento de los procesos. Cada proceso tiene su propio espacio de direcciones virtuales, que se mapea a las páginas físicas correspondientes en la memoria. Esto ayuda a prevenir accesos no autorizados y evita que un proceso interfiera con la memoria de otros procesos.
**2. ¿Como podía el OS permitir el acceso a otras zonas de memoria?**
Para permitir el acceso a otras zonas de memoria, el OS podría implementar mecanismos de intercambio de información o comunicación entre procesos, como la comunicación a través de canales establecidos o el uso de mecanismos de memoria compartida controlados. Estas técnicas permitirían que procesos específicos compartan y accedan a zonas de memoria controladas y autorizadas.
**3. ¿Por qué debería o por qué no debería?**
El OS debería tener medidas de seguridad y protección para controlar el acceso a otras zonas de memoria por parte de los procesos. Permitir el acceso a otras zonas de memoria puede presentar riesgos de seguridad y privacidad, ya que un proceso podría acceder y modificar información confidencial o interferir con la ejecución de otros procesos. Sin embargo, en ciertos casos, podría haber escenarios específicos en los que sea necesario y seguro permitir el acceso controlado a otras zonas de memoria, como en entornos de programación en los que se requiera compartir datos o realizar operaciones colaborativas entre procesos autorizados. En tales casos, el OS debería implementar mecanismos de seguridad y control adecuados para garantizar que el acceso se realice de manera segura y controlada.


## 8. Compare el mecanismo de paginación con el de segmentación con respecto a la cantidad de memoria requerida por las estructuras de producción de direcciones para convertir las direcciones virtuales en direcciones físicas.

La paginación requiere una tabla de páginas para convertir direcciones virtuales en direcciones físicas, lo que ocupa memoria adicional.

En el caso de la segmentación, se requiere una tabla de segmentos que mapee los segmentos de direcciones virtuales a direcciones físicas. Esta tabla es más simple y ocupa menos memoria que la tabla de páginas utilizada en la paginación.

## 9. Considere la siguiente tabla de segmento:
Segmento  | Base  | Longitud  | 

0         |219    |600        |

1         |2300   |14         |

2         |90     |100        |

3         |1327   |580        |

4         |1952   | 96        |

*¿Cuales son las direcciones físicas para las siguientes direcciones lógicas?*
 - 0. 430   = 649
 - 1 10    = 2310
 - 2. 500   = 590
 - 3. 400   = 1727
 - 4. 112   = 2064
