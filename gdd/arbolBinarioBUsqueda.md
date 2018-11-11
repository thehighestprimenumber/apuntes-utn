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

