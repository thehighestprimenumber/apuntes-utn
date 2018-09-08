# Análisis de Sistemas

# ANALISIS ESTRUCTURADO

## DER: DIAGRAMA DE ENTIDAD-RELACION

- Representa mediante un modelo de red los datos almacenados o persistidos en el sistema, y sus relaciones
- Los elementos que lo componen son:
    - Entidades
    - Atributos
    - Relaciones
    - Clave


## ENTIDADES

- Es una idea relevante del negocio que estoy modelando
- Es un contexto determinado del cual deseamos guardar información para utilizarla en otro momento
- Se designa con un sustantivo en singular. Ej: Factura, Cliente
- Posee una clave que permite identificar de forma única una  ocurrencia de la entidad

- Está compuesta por Atributos y Relaciones

## ATRIBUTOS

- Son características o propiedades asociadas a la entidad

- Toman valor en una instancia particular

- Son valores atómicos (similar al Elemento de Dato del DD)
  ​

  | Entidad FACTURA | Instancia de FACTURA |
  | --------------- | -------------------- |
  | <u>Tipo</u>     | A                    |
  | <u>Numero</u>   | 0001                 |
  | Fecha           | 03-09-2017           |
  | Cliente         | 001                  |






```
CLIENTE
```
```
Cod_cliente
Razón Social
Teléfono
```
```
CLIENTE
```
```
Cod_cliente: 001
Razón Social : Pepe
Teléfono: 2222-
```
entidad

atributos

```
INSTANCIAS
```

## RELACIONES

- Indican cómo se relacionan las entidades
- Se nombran con una letra R seguida de un subíndice “n” (Rn). El “n” es
    único y no indica orden

```
CARDINALIDAD
Número máximo de instancias con las que puede relacionarse una
entidad de un extremo de la relación con la del otro extremo de la relación
```
```
MODALIDAD
Número mínimo de instancias con las que puede relacionarse una
entidad de un extremo de la relación con la del otro extremo de la
relación
```
```
1 a 1
1 a N
```
```
N a 1
N a N
```
```
opcional
obligatorio
```

```
FACTURA
```
```
Tipo
Número
Fecha
R1: Cliente
```
```
CLIENTE
```
```
Cod_cliente
Razón Social
Teléfono
```
```
modalidad
```
```
cardinalidad
```
### EJEMPLO DE RELACIÓN

```
R
```
Atributo que indica la relación

Siempre está en la entidad de cardinalidad “N” o “Muchos”

Se indica al lado del nombre de la relación, una descripción del significado
lógico de la misma


### RELACION MUCHOS A MUCHOS

- Es una idea lógica que no puede ser implementada físicamente
- En el DER utilizamos una entidad asociativa para resolver este impedimento

```
cliente
```
cliente

```
producto
```
```
producto
PRODUCTO_X_CLIENTE
```
```
R1: Cliente
R2: Producto
```
```
R1 R
```

```
LEGAJO
```
```
Numero Legajo
Apellido
Nombre
R1: Jefe
```
### RELACION UNARIA

- Es la relación de una entidad con otra instancia de sí misma

```
R
```

## CLAVE

```
SUPERCLAVE
```
- Conjunto de uno o más Atributos (incluyendo atributos de relaciones)
    que permiten identificar de forma única una ocurrencia o instancia de
    una entidad (concepto de **UNICIDAD** )

```
CLAVE CANDIDATA o SUPERCLAVE MÍNIMA:
```
- Aquellas Superclaves para las cuales ningún subconjunto propio de
    atributos es a su vez una Superclave (concepto de **MINIMALIDAD** )
- Cualquiera de las Claves Candidatas puede ser elegida como Clave
    Principal


## CLAVE

- Identifica inequívocamente una sola instancia por entidad

```
CLAVE PRINCIPAL (Primary Key, PK)
Es una de las Claves Candidatas que es elegida por el analista o
diseñador para ser utilizada por el sistema, siguiendo su criterio de
análisis para la elección (ej: Familiaridad de la clave para el Usuario).
Aquellas Claves Candidatas que no son elegidas como Clave Principal
se denominan Clave Alternativa. Al ser Clave Candidata cumple con:
```
- UNICIDAD
- MINIMALIDAD

```
Nota: en el diagrama los atributos que conforman la Clave Principal van
subrayados para distinguirlos del resto.
```

## CLAVE

- Identifica inequívocamente una sola instancia por entidad

```
CLAVE FORANEA o SECUNDARIA (Foreign Key, FK)
Clave de una entidad usada como atributo de otra entidad con la cual
ésta se relaciona. En el DER lógico se representa con el atributo de
relación Rn. En el DER físico éste es reemplazado por el atributo o
conjunto de atributos que conforman la Clave Primaria de la entidad
relacionada
```

###### CLASIFICACION DE ENTIDADES

- Fundamentales o Fuertes
    Su clave esta formada únicamente por atributos propios, si elimino las
    relaciones las entidades siguen existiendo
- Dependientes o Débiles
    Su clave contiene al menos una clave foránea (relación)
       - Asociativa: clave principal sin atributos propios
       - Atributiva: clave principal con relación y atributos propios
- Subtipo - Supertipo
    Tipos de entidades de una o mas subcategorías, conectadas por una relación.
    La entidad Supertipo tiene un atributo que permite discernir de qué Subtipo es
    una instancia determinada
       CLIENTE

```
CLIENTE_MINORISTA CLIENTE_MAYORISTA
```

- Proceso mediante el cual se aplican una serie de

###### reglas (Formas Normales) a las entidades y relaciones

###### de un modelo con el objetivo de:

- Eliminar redundancias de datos
- Evitar problemas de actualización
- Proteger la integridad del modelo

## NORMALIZACION


## NORMALIZACION

**- 1° FORMA NORMAL**

###### Se eliminan los atributos calculados. Toda entidad tiene

###### clave, la cual no puede poseer atributos nulos. Todo

###### campo no clave, depende de la misma. Se eliminan

#### “grupos repetitivos”


## NORMALIZACION

**- 2° FORMA NORMAL**

###### Los campos no claves dependen completamente de la

#### clave.


## NORMALIZACION

**- 3° FORMA NORMAL**

###### No existen dependencias transitivas entre atributos no

#### clave.


## DER - EJEMPLO


## DER – Balanceo con DFD y DD

- Balanceo con DFD:
    - Cada almacenamiento del DFD debe estar

##### representado por una o más entidades del DER

- Cada entidad del DER debe estar representada por

##### uno o más almacenamientos del DFD

- Balanceo con DD:
    - Cada definición en DD de una estrucura de datos que

###### corresponda a un almacenamiento debe

###### corresponder a una o varias entidades del DER

###### relacionadas, donde los elementos de datos del DD

##### se visualicen como atributos del DER


## DER - Resumen

- Refleja los datos, no lo que se hace con ellos
- Se incluyen todos los datos almacenados del sistema

###### en estudio

- Es independiente de la tecnología de base de datos,

###### pero ésta debe responder al modelo relacional

- DER Lógico no tiene restricciones de espacio de

###### almacenamiento ni performance

- Su proceso de construcción es flexible


# CONSULTAS


### BIBLIOGRAFIA

- Kendall & Kendall - Analisis y diseño de

#### sistemas: Cap 13.

- Yourdon - Analisis Estructurado Moderno:

#### Caps 4,12,14.

- Pressman – Ingeniería de Software: Cap 6

