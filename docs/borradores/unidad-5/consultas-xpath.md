# Consultas XPath

## Aplicando XPath en situaciones reales

Hasta ahora hemos aprendido:

- Cómo navegar por un documento XML mediante rutas.
- Cómo utilizar ejes XPath.
- Cómo seleccionar distintos tipos de nodos.
- Cómo filtrar resultados mediante predicados.
- Cómo utilizar funciones y operadores.

En esta sección vamos a combinar todos estos conceptos para construir consultas XPath completas como las que se utilizan en ejercicios prácticos, exámenes y transformaciones XSLT.

!!! info "Idea clave"
    Una consulta XPath suele estar formada por varios elementos combinados:

    - Ruta.
    - Eje.
    - Nodo de comprobación.
    - Predicado.
    - Función.
    - Operadores.

    Cuantos más elementos combinemos, más precisa será la consulta.

---

## Documento XML de ejemplo

Utilizaremos la siguiente filmoteca como referencia:

```xml
<filmoteca>

    <pelicula estreno="1942" minutos="102">

        <titulo>Casablanca</titulo>

        <director>Michael Curtiz</director>

        <guion>
            <guionista>Howard Koch</guionista>
            <guionista>Julius J. Epstein</guionista>
        </guion>

        <interpretes>
            <interprete papel="Rick Blaine">
                Humphrey Bogart
            </interprete>

            <interprete papel="Ilsa Lund">
                Ingrid Bergman
            </interprete>
        </interpretes>

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

## Consultas básicas

### Obtener todos los títulos

```xpath
//titulo
```

Resultado:

```text
Casablanca
The Apartment
```

---

### Obtener todos los directores

```xpath
//director
```

Resultado:

```text
Michael Curtiz
Billy Wilder
```

---

### Obtener todos los guionistas

```xpath
//guionista
```

Resultado:

```text
Howard Koch
Julius J. Epstein
Billy Wilder
```

---

### Obtener todos los intérpretes

```xpath
//interprete
```

Resultado:

```text
Humphrey Bogart
Ingrid Bergman
```

---

### Obtener todos los atributos estreno

```xpath
//pelicula/@estreno
```

Resultado:

```text
1942
1960
```

---

## Consultas con filtros

### Buscar una película por título

```xpath
//pelicula[titulo='Casablanca']
```

Resultado:

```xml
<pelicula estreno="1942">
```

---

### Buscar películas dirigidas por Billy Wilder

```xpath
//pelicula[director='Billy Wilder']
```

Resultado:

```xml
<pelicula estreno="1960">
```

---

### Buscar películas estrenadas en 1942

```xpath
//pelicula[@estreno='1942']
```

Resultado:

```xml
<pelicula estreno="1942">
```

---

### Buscar películas de más de 120 minutos

```xpath
//pelicula[@minutos > 120]
```

Resultado:

```xml
<pelicula estreno="1960" minutos="125">
```

---

### Buscar intérpretes por papel

```xpath
//interprete[@papel='Rick Blaine']
```

Resultado:

```xml
<interprete papel="Rick Blaine">
    Humphrey Bogart
</interprete>
```

---

## Consultas utilizando funciones

### Obtener la primera película

```xpath
//pelicula[1]
```

---

### Obtener la segunda película

```xpath
//pelicula[position()=2]
```

---

### Obtener la última película

```xpath
//pelicula[last()]
```

---

### Contar películas

```xpath
count(//pelicula)
```

Resultado:

```text
2
```

---

### Contar guionistas

```xpath
count(//guionista)
```

Resultado:

```text
3
```

---

### Buscar títulos que contengan una palabra

```xpath
//titulo[contains(text(),'Apart')]
```

Resultado:

```xml
<titulo>The Apartment</titulo>
```

---

### Buscar elementos cuyo nombre empiece por "t"

```xpath
//*[starts-with(name(),'t')]
```

Resultado:

```xml
<titulo>
```

---

## Consultas complejas

### Películas con más de un guionista

```xpath
//pelicula[count(guion/guionista) > 1]
```

Resultado:

```xml
<pelicula estreno="1942">
```

---

### Películas dirigidas por Billy Wilder y estrenadas en 1960

```xpath
//pelicula[
    director='Billy Wilder'
    and
    @estreno='1960'
]
```

Resultado:

```xml
<pelicula estreno="1960">
```

---

### Películas estrenadas después de 1950

```xpath
//pelicula[@estreno > 1950]
```

Resultado:

```xml
<pelicula estreno="1960">
```

---

### Títulos y directores en una sola consulta

```xpath
//titulo | //director
```

Resultado:

```text
Casablanca
Michael Curtiz
The Apartment
Billy Wilder
```

---

### Obtener el director de Casablanca

```xpath
//titulo[.='Casablanca']/../director
```

Resultado:

```xml
<director>Michael Curtiz</director>
```

---

## Casos típicos de examen

## Ejercicio tipo 1

**Enunciado**

Obtener todos los nombres de los guionistas.

**Solución**

```xpath
//guionista
```

---

## Ejercicio tipo 2

**Enunciado**

Obtener el atributo `estreno` de todas las películas.

**Solución**

```xpath
//pelicula/@estreno
```

---

## Ejercicio tipo 3

**Enunciado**

Obtener las películas estrenadas después de 1950.

**Solución**

```xpath
//pelicula[@estreno > 1950]
```

---

## Ejercicio tipo 4

**Enunciado**

Obtener únicamente el texto de los títulos.

**Solución**

```xpath
//titulo/text()
```

---

## Ejercicio tipo 5

**Enunciado**

Obtener las películas con más de un guionista.

**Solución**

```xpath
//pelicula[count(guion/guionista) > 1]
```

---

## Resumen de consultas habituales

| Objetivo | Consulta XPath |
|-----------|----------------|
| Obtener todos los títulos | `//titulo` |
| Obtener todos los directores | `//director` |
| Obtener todos los atributos estreno | `//pelicula/@estreno` |
| Buscar una película concreta | `//pelicula[titulo='Casablanca']` |
| Buscar por atributo | `//pelicula[@estreno='1942']` |
| Obtener la primera película | `//pelicula[1]` |
| Obtener la última película | `//pelicula[last()]` |
| Contar películas | `count(//pelicula)` |
| Buscar por contenido | `contains(text(),'Apart')` |
| Unir consultas | `//titulo \| //director` |

---

## Actividades prácticas

??? question "Actividad 1. Consultas básicas"

    Escribe consultas XPath para obtener:

    1. Todos los títulos.
    2. Todos los directores.
    3. Todos los intérpretes.
    4. Todos los atributos `estreno`.

    ??? success "Ver solución"

        **1. Todos los títulos**

        ```xpath
        //titulo
        ```

        **2. Todos los directores**

        ```xpath
        //director
        ```

        **3. Todos los intérpretes**

        ```xpath
        //interprete
        ```

        **4. Todos los atributos estreno**

        ```xpath
        //pelicula/@estreno
        ```

---

??? question "Actividad 2. Utilizando filtros"

    Construye consultas XPath que permitan obtener:

    1. La película Casablanca.
    2. Las películas dirigidas por Billy Wilder.
    3. Las películas estrenadas en 1960.

    ??? success "Ver solución"

        **1. Buscar Casablanca**

        ```xpath
        //pelicula[titulo='Casablanca']
        ```

        **2. Buscar películas de Billy Wilder**

        ```xpath
        //pelicula[director='Billy Wilder']
        ```

        **3. Buscar películas estrenadas en 1960**

        ```xpath
        //pelicula[@estreno='1960']
        ```

---

??? question "Actividad 3. Utilizando funciones"

    Construye consultas XPath para:

    1. Obtener la segunda película.
    2. Obtener la última película.
    3. Contar las películas del documento.

    ??? success "Ver solución"

        **1. Segunda película**

        ```xpath
        //pelicula[position()=2]
        ```

        **2. Última película**

        ```xpath
        //pelicula[last()]
        ```

        **3. Contar películas**

        ```xpath
        count(//pelicula)
        ```

---

??? question "Actividad 4. Consultas avanzadas"

    Construye consultas XPath para:

    1. Obtener películas con más de un guionista.
    2. Obtener películas estrenadas después de 1950.
    3. Obtener títulos y directores en una única consulta.

    ??? success "Ver solución"

        **1. Películas con más de un guionista**

        ```xpath
        //pelicula[count(guion/guionista) > 1]
        ```

        **2. Películas estrenadas después de 1950**

        ```xpath
        //pelicula[@estreno > 1950]
        ```

        **3. Títulos y directores en una única consulta**

        ```xpath
        //titulo | //director
        ```

---

??? question "Reto final"

    Construye una consulta XPath que seleccione películas que:

    - Fueron estrenadas después de 1950.
    - Están dirigidas por Billy Wilder.
    - Tienen al menos un guionista.

    ??? success "Ver solución"

        ```xpath
        //pelicula[
            @estreno > 1950
            and
            director='Billy Wilder'
            and
            count(guion/guionista) > 0
        ]
        ```

        Esta consulta combina:

        - Filtro por atributo.
        - Filtro por contenido.
        - Función `count()`.
        - Operador lógico `and`.

---

# Resumen

!!! success "Ideas clave"

    - Las consultas XPath reales combinan rutas, ejes y predicados.
    - Los filtros permiten seleccionar nodos específicos.
    - Las funciones amplían las capacidades de XPath.
    - `count()`, `last()` y `position()` son algunas de las funciones más utilizadas.
    - Los operadores lógicos permiten construir consultas complejas.
    - El operador `|` permite unir resultados.
    - XPath es la base de la selección de información utilizada posteriormente en XSLT.