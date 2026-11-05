# Predicados, funciones y operadores

## Filtrando resultados con XPath

Hasta ahora hemos aprendido a recorrer un documento XML utilizando rutas, ejes y nodos de comprobación.

Sin embargo, en situaciones reales rara vez queremos obtener todos los elementos de un documento. Lo habitual es seleccionar únicamente aquellos que cumplen determinadas condiciones.

XPath incorpora tres mecanismos fundamentales para ello:

- **Predicados**: permiten filtrar nodos.
- **Funciones**: realizan operaciones sobre nodos o cadenas de texto.
- **Operadores**: permiten construir condiciones más complejas.

!!! info "Idea clave"
    Los predicados de XPath funcionan de forma parecida a la cláusula `WHERE` de SQL: permiten seleccionar únicamente los nodos que cumplen una determinada condición.

---

## Documento de ejemplo

Utilizaremos la siguiente filmoteca para todos los ejemplos:

```xml
<filmoteca>

    <pelicula estreno="1942" minutos="102">

        <titulo>Casablanca</titulo>

        <director>Michael Curtiz</director>

        <guion>
            <guionista>Howard Koch</guionista>
            <guionista>Julius J. Epstein</guionista>
        </guion>

    </pelicula>

    <pelicula estreno="1960" minutos="125">

        <titulo>The Apartment</titulo>

        <director>Billy Wilder</director>

        <guion>
            <guionista>Billy Wilder</guionista>
        </guion>

    </pelicula>

</filmoteca>
```

---

## Predicados

### ¿Qué es un predicado?

Los predicados son filtros que se escriben entre corchetes:

```xpath
[ ]
```

Permiten seleccionar únicamente los nodos que cumplen una determinada condición.

Sintaxis general:

```xpath
ruta[condicion]
```

---

## Filtrado por el valor de un elemento

Podemos seleccionar una película concreta utilizando su título.

```xpath
/filmoteca/pelicula[titulo='Casablanca']
```

Resultado:

```xml
<pelicula estreno="1942" minutos="102">
    ...
</pelicula>
```

---

## Filtrado por atributos

También es posible filtrar utilizando atributos.

```xpath
/filmoteca/pelicula[@estreno='1942']
```

Resultado:

```xml
<pelicula estreno="1942" minutos="102">
    ...
</pelicula>
```

---

## Filtrado por posición

XPath permite seleccionar nodos según su posición dentro de una colección.

### Primer elemento

```xpath
//pelicula[1]
```

Resultado:

```xml
<pelicula estreno="1942">
```

---

### Segundo elemento

```xpath
//pelicula[2]
```

Resultado:

```xml
<pelicula estreno="1960">
```

---

### Último elemento

```xpath
//pelicula[last()]
```

Resultado:

```xml
<pelicula estreno="1960">
```

---

## Filtrado por existencia de un atributo

Podemos recuperar únicamente aquellos elementos que posean un atributo determinado.

```xpath
//pelicula[@estreno]
```

Resultado:

Todas las películas que contienen el atributo `estreno`.

---

## Encadenando predicados

Los predicados pueden combinarse.

```xpath
//pelicula[director='Billy Wilder'][@estreno='1960']
```

Resultado:

```xml
<pelicula estreno="1960">
```

La película debe cumplir ambas condiciones para ser seleccionada.

---

## Funciones XPath

### ¿Qué son las funciones?

XPath incorpora numerosas funciones predefinidas que permiten:

- Obtener posiciones.
- Contar nodos.
- Buscar texto.
- Comprobar cadenas.
- Calcular longitudes.

---

## Función position()

Devuelve la posición que ocupa un nodo dentro del conjunto seleccionado.

```xpath
//pelicula[position()=2]
```

Resultado:

```xml
<pelicula estreno="1960">
```

---

## Función last()

Permite obtener el último elemento de una colección.

```xpath
//pelicula[last()]
```

Resultado:

```xml
<pelicula estreno="1960">
```

---

## Función count()

Cuenta el número de nodos seleccionados.

### Número total de películas

```xpath
count(//pelicula)
```

Resultado:

```text
2
```

---

### Películas con más de un guionista

```xpath
//pelicula[count(guion/guionista) > 1]
```

Resultado:

```xml
<pelicula estreno="1942">
```

Porque contiene dos guionistas.

---

## Función starts-with()

Comprueba si una cadena comienza por un determinado texto.

### Ejemplo

```xpath
//*[starts-with(name(),'t')]
```

Resultado:

```xml
<titulo>
```

Selecciona todos los elementos cuyo nombre empieza por la letra `t`.

---

## Función contains()

Comprueba si una cadena contiene un determinado texto.

### Ejemplo

```xpath
//titulo[contains(text(),'Apart')]
```

Resultado:

```xml
<titulo>The Apartment</titulo>
```

---

## Función string-length()

Obtiene la longitud de una cadena.

### Ejemplo

```xpath
string-length("Casablanca")
```

Resultado:

```text
10
```

---

## Operadores de comparación

Los operadores de comparación permiten evaluar condiciones.

| Operador | Significado |
|-----------|-------------|
| = | Igual |
| != | Distinto |
| > | Mayor que |
| < | Menor que |
| >= | Mayor o igual |
| <= | Menor o igual |

---

## Ejemplos

### Películas estrenadas en 1960

```xpath
//pelicula[@estreno=1960]
```

---

### Películas con más de 120 minutos

```xpath
//pelicula[@minutos>120]
```

Resultado:

```xml
<pelicula estreno="1960" minutos="125">
```

---

## Operadores lógicos

Permiten combinar varias condiciones.

### Operador and

Todas las condiciones deben cumplirse.

```xpath
//pelicula[@estreno='1960' and director='Billy Wilder']
```

---

### Operador or

Basta con que se cumpla una condición.

```xpath
//pelicula[@estreno='1942' or @estreno='1960']
```

---

### Operador not()

Invierte una condición.

```xpath
//pelicula[not(@estreno='1942')]
```

Resultado:

```xml
<pelicula estreno="1960">
```

---

## Operador de unión

### Operador |

Permite unir varios conjuntos de nodos.

### Sintaxis

```xpath
expresion1 | expresion2
```

---

### Ejemplo

```xpath
//titulo | //director
```

Resultado:

```xml
<titulo>Casablanca</titulo>

<director>Michael Curtiz</director>

<titulo>The Apartment</titulo>

<director>Billy Wilder</director>
```

---

## Resumen de funciones y operadores

| Elemento | Descripción | Ejemplo |
|-----------|-------------|----------|
| position() | Posición de un nodo | `//pelicula[position()=2]` |
| last() | Último nodo | `//pelicula[last()]` |
| count() | Cuenta nodos | `count(//pelicula)` |
| starts-with() | Comprueba inicio de texto | `starts-with(name(),'t')` |
| contains() | Comprueba contenido | `contains(text(),'Apart')` |
| string-length() | Longitud de una cadena | `string-length('Casablanca')` |
| and | Y lógico | `cond1 and cond2` |
| or | O lógico | `cond1 or cond2` |
| not() | Negación lógica | `not(condicion)` |
| \| | Unión de resultados | `//titulo \| //director` |

---

## Actividades prácticas

??? question "Actividad 1. Filtrando por contenido"

    Escribe expresiones XPath para seleccionar:

    1. La película cuyo título sea `Casablanca`.
    2. La película dirigida por `Billy Wilder`.
    3. Las películas estrenadas en `1960`.

    ??? success "Ver solución"

        ```xpath
        /filmoteca/pelicula[titulo='Casablanca']
        ```

        ```xpath
        /filmoteca/pelicula[director='Billy Wilder']
        ```

        ```xpath
        /filmoteca/pelicula[@estreno='1960']
        ```

---

??? question "Actividad 2. Trabajando con posiciones"

    Escribe expresiones XPath para obtener:

    1. La primera película.
    2. La segunda película.
    3. La última película.

    ??? success "Ver solución"

        ```xpath
        //pelicula[1]
        ```

        ```xpath
        //pelicula[2]
        ```

        ```xpath
        //pelicula[last()]
        ```

---

??? question "Actividad 3. Utilizando funciones"

    Escribe expresiones XPath para:

    1. Contar las películas.
    2. Obtener las películas con más de un guionista.
    3. Buscar títulos que contengan la palabra "Apart".

    ??? success "Ver solución"

        ```xpath
        count(//pelicula)
        ```

        ```xpath
        //pelicula[count(guion/guionista) > 1]
        ```

        ```xpath
        //titulo[contains(text(),'Apart')]
        ```

---

??? question "Actividad 4. Operadores lógicos"

    Construye expresiones XPath que permitan:

    1. Seleccionar películas estrenadas en 1942 o 1960.
    2. Seleccionar películas dirigidas por Billy Wilder y estrenadas en 1960.
    3. Seleccionar películas que no se estrenaron en 1942.

    ??? success "Ver solución"

        ```xpath
        //pelicula[@estreno='1942' or @estreno='1960']
        ```

        ```xpath
        //pelicula[@estreno='1960' and director='Billy Wilder']
        ```

        ```xpath
        //pelicula[not(@estreno='1942')]
        ```

---

??? question "Reto final"

    Construye una única expresión XPath que devuelva todos los elementos:

    - `titulo`
    - `director`

    del documento XML.

    ??? success "Ver solución"

        ```xpath
        //titulo | //director
        ```

        El operador `|` permite unir varios conjuntos de resultados en una única consulta.

        Resultado:

        ```xml
        <titulo>Casablanca</titulo>
        <director>Michael Curtiz</director>
        <titulo>The Apartment</titulo>
        <director>Billy Wilder</director>
        ```

---

# Resumen

!!! success "Ideas clave"

    - Los predicados permiten filtrar resultados mediante condiciones.
    - Los predicados se escriben entre corchetes `[ ]`.
    - Las funciones amplían las capacidades de XPath.
    - Las funciones más utilizadas son `position()`, `last()`, `count()`, `contains()` y `starts-with()`.
    - Los operadores permiten construir expresiones complejas.
    - `and`, `or` y `not()` permiten combinar condiciones.
    - El operador `|` permite unir resultados procedentes de distintas consultas.
    - El uso combinado de rutas, predicados y funciones constituye la base de las consultas XPath avanzadas.