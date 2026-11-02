# Actividades voluntarias XSLT

## Documento XML de referencia

Utiliza el siguiente documento XML para todas las actividades:

```xml
<?xml version="1.0" encoding="UTF-8"?>

<horario>

    <dia>

        <numdia>1</numdia>

        <tarea prioridad="media">

            <hora-ini>12</hora-ini>

            <hora-fin>14</hora-fin>

            <asignatura>Tutorías</asignatura>

        </tarea>

    </dia>

    <dia>

        <numdia>2</numdia>

        <tarea prioridad="alta">

            <hora-ini>12</hora-ini>

            <hora-fin>14</hora-fin>

            <asignatura>Fol</asignatura>

        </tarea>

    </dia>

    <dia>

        <numdia>4</numdia>

        <tarea prioridad="alta">

            <hora-ini>9</hora-ini>

            <hora-fin>11</hora-fin>

            <asignatura>Lenguajes de Marcas</asignatura>

        </tarea>

        <tarea prioridad="alta">

            <hora-ini>16</hora-ini>

            <hora-fin>17</hora-fin>

            <asignatura>Inglés</asignatura>

        </tarea>

    </dia>

    <dia>

        <numdia>3</numdia>

        <tarea prioridad="alta">

            <hora-ini>9</hora-ini>

            <hora-fin>11</hora-fin>

            <asignatura>Procesadores de lenguajes</asignatura>

        </tarea>

    </dia>

    <dia>

        <numdia>5</numdia>

        <tarea prioridad="baja">

            <hora-ini>17</hora-ini>

            <hora-fin>18</hora-fin>

            <asignatura>Ver la tele</asignatura>

        </tarea>

    </dia>

</horario>
```

---

# Bloque 1. Primeras transformaciones

??? question "Ejercicio 1. Mostrar las asignaturas"

    Genera una página HTML que muestre todas las asignaturas del horario.

    ### Resultado esperado

    ```text
    Tutorías
    Fol
    Lenguajes de Marcas
    Inglés
    Procesadores de lenguajes
    Ver la tele
    ```

    ??? tip "Pista 1"

        Recorre todos los elementos:

        ```xpath
        horario/dia/tarea
        ```

    ??? tip "Pista 2"

        Necesitarás utilizar:

        ```xml
        <xsl:for-each>
        ```

    ??? tip "Pista 3"

        El nombre de la asignatura se obtiene mediante:

        ```xpath
        asignatura
        ```

---

??? question "Ejercicio 2. Mostrar días y asignaturas"

    Genera una página HTML que muestre:

    ```text
    Día 1 - Tutorías
    Día 2 - Fol
    Día 3 - Procesadores de lenguajes
    ...
    ```

    ??? tip "Pista 1"

        Necesitarás acceder simultáneamente a:

        ```xpath
        numdia
        ```

        y

        ```xpath
        asignatura
        ```

    ??? tip "Pista 2"

        Cada línea puede mostrarse dentro de:

        ```html
        <p>
        ```

---

??? question "Ejercicio 3. Horario en forma de lista"

    Genera una lista HTML con todas las asignaturas.

    ### Requisitos

    - Utilizar listas HTML.
    - Una asignatura por elemento.

    ??? tip "Pista"

        Utiliza:

        ```html
        <ul>
        <li>
        ```

---

??? question "Ejercicio 4. Mostrar horas"

    Genera una página que muestre:

    ```text
    Tutorías: 12 - 14

    Fol: 12 - 14

    ...
    ```

    ??? tip "Pista"

        Necesitarás:

        ```xpath
        hora-ini
        ```

        y

        ```xpath
        hora-fin
        ```

---

??? question "Ejercicio 5. Ficha completa de tareas"

    Muestra para cada tarea:

    - Asignatura.
    - Hora de inicio.
    - Hora de fin.
    - Prioridad.

    ??? tip "Pista"

        La prioridad es un atributo:

        ```xpath
        @prioridad
        ```

---

# Bloque 2. Generación de HTML

??? question "Ejercicio 6. Tabla básica"

    Genera una tabla HTML con las columnas:

    - Día.
    - Asignatura.

    ??? tip "Pista"

        Utiliza:

        ```html
        <table>
        <tr>
        <td>
        ```

---

??? question "Ejercicio 7. Tabla completa"

    Amplía la tabla anterior mostrando:

    - Día.
    - Asignatura.
    - Hora inicio.
    - Hora fin.
    - Prioridad.

    ??? tip "Pista"

        Necesitarás cinco columnas.

---

??? question "Ejercicio 8. Ordenación por día"

    Ordena la salida por número de día.

    ??? tip "Pista 1"

        Dentro del recorrido añade:

        ```xml
        <xsl:sort>
        ```

    ??? tip "Pista 2"

        El criterio de ordenación será:

        ```xpath
        numdia
        ```

---

# Bloque 3. Condicionales

??? question "Ejercicio 9. Destacar tareas importantes"

    Genera una tabla en la que las tareas con prioridad alta aparezcan destacadas.

    ### Requisitos

    - Aplicar un formato visual diferente.
    - Mantener el resto de tareas sin cambios.

    ??? tip "Pista 1"

        Utiliza:

        ```xml
        <xsl:if>
        ```

        o

        ```xml
        <xsl:choose>
        ```

    ??? tip "Pista 2"

        Comprueba:

        ```xpath
        @prioridad='alta'
        ```

---

??? question "Ejercicio 10. Horario semanal completo"

    Diseña una página HTML completa que incluya:

    - Título principal.
    - Tabla de tareas.
    - Ordenación por día.
    - Día.
    - Asignatura.
    - Horario.
    - Prioridad.
    - Destacado para tareas prioritarias.

    ### Elementos XSLT recomendados

    ```xml
    <xsl:template>
    ```

    ```xml
    <xsl:for-each>
    ```

    ```xml
    <xsl:value-of>
    ```

    ```xml
    <xsl:sort>
    ```

    ```xml
    <xsl:if>
    ```

    o

    ```xml
    <xsl:choose>
    ```

    ??? tip "Pista 1"

        Comienza generando la estructura HTML.

    ??? tip "Pista 2"

        Después construye la tabla.

    ??? tip "Pista 3"

        Añade la ordenación.

    ??? tip "Pista 4"

        Por último incorpora los elementos condicionales.

---

# Entrega recomendada

Para cada ejercicio:

1. Guarda el XML utilizado.
2. Guarda la hoja XSLT desarrollada.
3. Genera el HTML resultante.
4. Incluye una captura del resultado obtenido.

---

# Objetivos trabajados

!!! success "Competencias desarrolladas"

    ✅ Utilizar XPath dentro de XSLT.

    ✅ Construir plantillas XSLT.

    ✅ Utilizar `xsl:value-of`.

    ✅ Utilizar `xsl:for-each`.

    ✅ Crear tablas HTML dinámicas.

    ✅ Ordenar resultados mediante `xsl:sort`.

    ✅ Aplicar condiciones mediante `xsl:if` y `xsl:choose`.

    ✅ Generar documentos HTML completos a partir de XML.

---

# Preparación para las actividades evaluables

!!! info "Siguiente paso"

    Si eres capaz de completar correctamente estas actividades, estarás preparado para abordar las actividades evaluables de XSLT y el proyecto final de transformación XML → HTML de la unidad.