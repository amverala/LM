# Actividades evaluables XSLT

## Objetivo

Estas actividades permiten evaluar la capacidad para transformar documentos XML en páginas HTML utilizando XSLT.

Durante su resolución será necesario aplicar:

- XPath.
- XSLT.
- HTML.
- Bucles.
- Condicionales.
- Ordenación.

---

## Documento XML de referencia

Utiliza el documento XML del horario trabajado durante la unidad.

---

# Actividad evaluable 1

??? question "Actividad 1. Generar una tabla HTML"

    Diseña una transformación XSLT que genere una página HTML con una tabla que muestre:

    - Día.
    - Asignatura.
    - Hora de inicio.
    - Hora de fin.

    ### Requisitos

    Deben utilizarse:

    ```xml
    <xsl:template>
    ```

    ```xml
    <xsl:for-each>
    ```

    ```xml
    <xsl:value-of>
    ```

    ### La tabla deberá contener

    | Día | Asignatura | Hora inicio | Hora fin |
    |------|------------|------------|-----------|

    y mostrar todas las tareas del horario.

---

# Actividad evaluable 2

??? question "Actividad 2. Ordenación del horario"

    Partiendo de la actividad anterior, modifica la transformación para que:

    - Las tareas aparezcan ordenadas por número de día.
    - Se muestre también la prioridad de cada tarea.

    ### Requisitos

    Deben utilizarse:

    ```xml
    <xsl:sort>
    ```

    y

    ```xpath
    @prioridad
    ```

    ### La tabla deberá contener

    | Día | Asignatura | Prioridad | Hora inicio | Hora fin |
    |------|------------|------------|------------|-----------|

---

# Actividad evaluable 3

??? question "Actividad 3. Agenda completa"

    Diseña una transformación XSLT completa que genere una página HTML denominada:

    ```text
    Mi Agenda Semanal
    ```

    La página deberá incluir:

    - Un título principal.
    - Una tabla con toda la información del horario.
    - Día.
    - Asignatura.
    - Prioridad.
    - Hora de inicio.
    - Hora de fin.
    - Número total de tareas existentes.

    Además:

    - Las tareas con prioridad alta deberán identificarse visualmente mediante un texto adicional.
    - Las tareas de prioridad media o baja aparecerán como tareas normales.

    ### Requisitos técnicos

    Deben utilizarse obligatoriamente:

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

    y además una de las siguientes estructuras:

    ```xml
    <xsl:if>
    ```

    o

    ```xml
    <xsl:choose>
    ```

    ### Ejemplo de resultado esperado

    ```text
    Fol - PRIORIDAD ALTA

    Lenguajes de Marcas - PRIORIDAD ALTA

    Ver la tele
    ```

---

# Entrega

Para cada actividad se deberá entregar:

1. Archivo XML utilizado.
2. Hoja de estilos XSLT desarrollada.
3. Documento HTML generado.
4. Captura de pantalla del resultado.
5. Breve explicación de la transformación realizada.

---

# Criterios generales de evaluación

Se valorará especialmente:

- Correcta utilización de XPath.
- Correcta construcción de las plantillas XSLT.
- Uso adecuado de `xsl:value-of`.
- Uso adecuado de `xsl:for-each`.
- Uso correcto de `xsl:sort`.
- Uso adecuado de estructuras condicionales.
- Generación correcta del HTML.
- Presentación clara de la información.
- Ausencia de errores de sintaxis.

---

# Objetivos evaluados

!!! success "Competencias"

    Al completar estas actividades el alumnado deberá demostrar que es capaz de:

    ✅ Seleccionar información mediante XPath.

    ✅ Transformar documentos XML utilizando XSLT.

    ✅ Generar páginas HTML a partir de XML.

    ✅ Construir tablas HTML dinámicas.

    ✅ Ordenar información mediante `xsl:sort`.

    ✅ Aplicar condiciones mediante `xsl:if` o `xsl:choose`.

    ✅ Integrar XML, XPath, HTML y XSLT en una única transformación.