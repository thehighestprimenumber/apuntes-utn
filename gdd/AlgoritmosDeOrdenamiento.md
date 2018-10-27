# Arbol Binario de Busqueda

Los subarboles a izquierda tienen clave menor a la raiz y vic para la derecha

```mermaid
graph TD
0(60) --> 00(40)
00(40) --> 000(20)
00 --> 001(50)
000 --> 0010(15)
000 --> 0011(35)
0 --> 01(75)
```

#### Arbol balanceado

Para todo Nodo: # de nodos de subarbol izquierdo == \# de nodos de subarbol derecho ± 1

##### 	Nodo Critico

​	{60, 40}

#### Arbol AVL

Para todo nodo: El nivel del subarbol izquierdo == El nivel del subarbol derecho ± 1

##### 	Nodo Critico

​	{60}



## Algoritmo para balancear un Árbol

Seleccionar

+   el nodo crítico a trabajar: El más cercano a la raíz (nodo 60)
+   el nodo que debe quedar como raíz (nodo 40)

### Rotacion a Derecha

```mermaid
graph TD
0(60) --> 00(40)
00(40) --> 000(20)
00 --> 001(50)
000 --> 0010(15)
000 --> 0011(35)
0 --> 01(75)
```

```mermaid
graph TD
0(60)
00(40) --> 000(20)

00 --> 0
0 --> 001(50)
000 --> 0010(15)
000 --> 0011(35)
0 --> 01(75)
```

### Rotacion a Izquierda

```mermaid
graph TD
20 --> 15
20 --> 40
40 --> 35
40 --> 60
60 --> 50
60 --> 75
```


```mermaid
graph TD
20 --> 15
40 --> 20
20 --> 35
40 --> 60
60 --> 50
60 --> 75
```
### Combinados

A(25, 11, 30, 7, 36, 18, 32)

```mermaid
graph TD

25 --> 11
25 --> 30
11 --> 7
30 --> 0
30 --> 36
36 --> 32
36 --> 00
11 --> 18
```

Balanceo desde el 30

Como es impar, hay un unico valor medio (32)

cambio la medio por el padre

tantas rotaciones como pasos de diferencia



```mermaid
graph TD

30 --> 0
30 --> 36
36 --> 32
36 --> 00

```

```mermaid
graph TD

30 --> 0
30 --> 36
36 --> 32
36 --> 00

```

```mermaid
graph TD

32 --> 30
32 --> 36

```

#Algoritmos de ordenamiento

# QuickSort

tomo a[0] y lo comparo contra todos los demas, para que queden menores a izquierda, mayores a derecha.

![Image result for quicksort animation](https://www.nczonline.net/images/wp-content/uploads/2012/11/quicksort_21.png)

| ==25== | 11   | 30     | 7      | 36   | ==18== | 32   |
| ------ | ---- | ------ | ------ | ---- | ------ | ---- |
| 18     | 11   | ==30== | 7      | 36   | ==25== | 32   |
| 18     | 11   | ==25== | ==7==  | 36   | 30     | 32   |
| 18     | 11   | 7      | ==25== | 36   | 30     | 32   |

como down y up se unen en 25, ahora lo trabajo recursivamente a las dos mitades

condicion de corte: 2 o + elementos


| 18     | 11   | 7     |
| ------ | ---- | ----- |
| ==18== | 11   | ==7== |
| 7      | 11   | ==18==|

corte???

##### CONTRA

cuando estan mas o menos ordenados, tiene mucho overhead en comparaciones



# HeapSort

busca generar un pseudo orden y despues termina muy rapido

precisa Arbol de orden parcial, para cada subarbol, los hijos son menores al padre (pero OK entre "primos")

+   Carga del Arbol  (se hace una vez)


+   Ordenamiento (n-1- veces)

| ==25== | 11   | 30   | 7    | 36   | 18   | 32   |
| ------ | ---- | ---- | ---- | ---- | ---- | ---- |
|        |      |      |      |      |      |      |

```mermaid
graph TD
25 --> 11
25 --> 30
```
como 30 > 25, cambio
```mermaid
graph TD
30 --> 11
30 --> 25
11 --> 7
11 --> 36
```
como como 36 > 11, cambio

```mermaid
graph TD
30 --> 36
30 --> 25
36 --> 7
36 --> 11
```
como como 36 >30, cambio


```mermaid
graph TD
36 --> 30
36 --> 25
30 --> 7
30 --> 11
25 --> 18
25 --> 32
```
como como 32 >25, cambio


```mermaid
graph TD
36 --> 30
30 --> 7
30 --> 11
36 --> 32
32 --> 18
32 --> 25
```

### Implementar arbol en Vector y ordenar

| 36   | 30   | 32   | 7    | 11   | 18   | 25   |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- |
|      |      |      |      |      |      |      |

Ya no cumple el preorden, entonces comparo al 25 (raiz) con sus hijos e intercambio por el mayor

```mermaid
graph TD
32 --> 30
30 --> 7
30 --> 11
32 --> 25
25 --> 18
```

# Implementacion de un arbol en un vector

```mermaid
graph TD
90 --> 60
90 --> 40

60 --> 20
60 --> 50

20 --> 10
20 --> 0

40 --> 30
40 --> 25
```
# por niveles

[90|60|40|20|50|30|25|10]

al completarlo por niveles, no quedan huecos



de un array, encontrar sus parientes

Hijo Izquierdo (x) = $((x+1)*2)-1$

Hijo Derecho (x) = $(x+1)*2$

Padre (x) = $ENT[(x-1)/2)]$

Si da overflow, es que no lo tiene. 



# Orden de Complejidad

+   Espacial (memoria)
+   Computacional (procesamiento) 
    +   no contemplamos inicializaciones y declaraciones
    +   analizamos lo recursivo e iterativo
    +   tipos
        +   FIja
        +   Variable

## de Quicksort

Complejidad variable, entre dos funciones

$cota superior:  N + N-1 + N-2 .... ~ N^2 $

$cota inferior : [log_2(n+1)]*n$

La ventaja de quicksort es que las llamadas recursivos se pueden paralelizar

## de Heapsort

Lo pesado es la carga del arbol. Tiene complejidad constante:

$ complejidad: Log_2(n+1)*n $ sin contemplar lo pesado de la carga

Es recursivo Y recurrente (Hasta que no se termina un paso, no puede avanzar el otro - " sincronico")