## Complejidad Algorítmica

### busqueda secuencial - complejidad lineal

```java
int i = 0; //1 t
while (i<len && arr[i] != v) //(if + and + if + arr[i])*n = 4t *n
{ i = i+1; } // 2t * n
return i<len?i:-1; //2 t
//complejidad algoritmica: 6n+3 - lineal
```

### busqueda binaria - complejidad logarítmica

```java
int i = 0; 
int j = len; 
bool found = false; 
while (i<=j && !found) {
    int k = (i+j)/2;
    if (arr[k] == v) return k;
    else (if arr[k]<v) i = k+1;
    				else j = k-1;
}
return -1;
// complejidad algoritmica: len + len/2 + (len/2)/2 ...
```

## Sorting

### HeapSort

<iframe width="560" height="315" src="https://www.youtube.com/embed/2DmK_H7IdTo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### ShellSort (creo que no lo vimos)

se Basa en InsertionSort:

<iframe width="560" height="315" src="https://www.youtube.com/embed/JU767SDMDvA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/SHcPqUe2GZM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

(por si quedan dudas:)

https://www.youtube.com/watch?v=CmPA7zE8mx0

### RadixSort

<iframe width="560" height="315" src="https://www.youtube.com/embed/GUHGMtNo6RQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### BubbleSort

<iframe width="560" height="315" src="https://www.youtube.com/embed/xli_FI7CuzA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### QuickSort

<iframe width="560" height="315" src="https://www.youtube.com/embed/Hoixgm4-P4M" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Si bien el peor caso de QuickSort es $$n^2$$, cuando agarramos un pivot muy chico, se soluciona eligiendo un pivot intermedio a partir de una pequeña muestra.

Es más eficiente que otros de complejidad $$ n*log(n)  $$ por el principio de localidad, y el hecho de que los datos no suelen venir totalmente desordenados.

| Algoritmo  | Complejidad |
| ---------- | ----------- |
| HeapSort   | $$ n*log(n) $$ |
| ShellSort  | $$ n*log(n)  $$ / $$ n*(log(n))^2$$ |
| RadixSort  | $$ n * long(alfabeto) $$ |
| BubbleSort | $$n$$ / $$ n^2 $$ |
| QuickSort  | $$ n*log(n)  $$ / $$ n^2$$ |



## Estrategias Algorítmicas

### Divide & conquer

### Greedy

tienen:

+   función de selección
+   función de factibilidad
+   función de solución
+   función de objetivo

### Programación dinámica

guardar resultados previos para no repetir calculos

## Grafos

### Algoritmo de Dijkstra

<iframe width="560" height="315" src="https://www.youtube.com/embed/_lHSawdgXpI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Algoritmo de cubrimiento mínimo

Devuelve un grafo que se puede recorrer completamente con el menor costo posible, descartando aristas.

#### Primm (x nodos)

<iframe width="560" height="315" src="https://www.youtube.com/embed/cplfcGZmX7I" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

#### Kruskal (x aristas)

<iframe width="560" height="315" src="https://www.youtube.com/embed/71UQH7Pr9kU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

#### 