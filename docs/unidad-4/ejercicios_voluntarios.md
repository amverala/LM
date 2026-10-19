
!!! success "Nivel de ampliación"

    Estos ejercicios permiten practicar e integrar todos los conceptos estudiados en la unidad.

    Son especialmente recomendables para alumnado que quiera consolidar XML Schema antes de afrontar los proyectos finales.

---

???+ example "Ejercicio 1 · Mi Biblioteca Personal"

    ## Objetivo

    Crear un documento XML y validarlo mediante un esquema XSD.

    Se trabajarán los siguientes conceptos:

    - Tipos simples.
    - Tipos complejos.
    - Cardinalidad.
    - Elementos opcionales.
    - Validación XML.

    ## Requisitos

    Crea:

    ```text
    biblioteca.xml
    biblioteca.xsd
    ```

    ### Estructura

    El documento XML representará una colección de libros.

    Elemento raíz:

    ```xml
    <biblioteca>
    ```

    Dentro de ella debe haber al menos tres elementos:

    ```xml
    <libro>
    ```

    Cada libro contendrá:

    - titulo
    - autor
    - anio_publicacion
    - editorial (opcional)

    ### Requisitos técnicos

    - `titulo` → texto.
    - `autor` → texto.
    - `anio_publicacion` → entero.
    - `editorial` → opcional.

    Utiliza:

    ```xml
    xs:string
    xs:integer
    xs:sequence
    minOccurs
    maxOccurs
    ```

    ## Comprobación

    Tu XML deberá validar correctamente frente al esquema.

    ??? tip "Pista"

        Recuerda que el elemento `editorial` puede definirse como opcional mediante:

        ```xml
        minOccurs="0"
        ```

---

???+ example "Ejercicio 2 · Gestión de pedidos"

    ## Objetivo

    Utilizar atributos y restricciones avanzadas.

    ## Requisitos

    Crea:

    ```text
    pedidos.xml
    pedidos.xsd
    ```

    Elemento raíz:

    ```xml
    <pedidos>
    ```

    Debe contener al menos dos:

    ```xml
    <pedido>
    ```

    ### Atributos

    Cada pedido tendrá:

    #### id_pedido

    Obligatorio.

    Formato:

    ```text
    PED-1234
    ```

    #### estado

    Obligatorio.

    Valores permitidos:

    ```text
    procesando
    enviado
    entregado
    ```

    #### urgente

    Opcional.

    Tipo:

    ```text
    boolean
    ```

    Valor por defecto:

    ```text
    false
    ```

    ### Elementos hijos

    Cada pedido contendrá:

    - fecha
    - cliente
    - total_pedido

    ### Restricciones

    - fecha → xs:date
    - total_pedido → positivo
    - estado → enumeración
    - id_pedido → patrón

    ## Comprobación

    Tu XML deberá validar correctamente.

    ??? tip "Pista"

        Para validar el identificador puedes utilizar:

        ```xml
        <xs:pattern value="PED-[0-9]{4}"/>
        ```

---

???+ example "Ejercicio 3 · Congreso tecnológico"

    ## Objetivo

    Aplicar los conceptos más avanzados de XML Schema.

    ## Requisitos

    Crea:

    ```text
    congreso.xml
    congreso.xsd
    ```

    ### Espacio de nombres

    Define el namespace:

    ```text
    http://www.micongreso.com/schema
    ```

    Utiliza:

    ```xml
    targetNamespace
    ```

    y

    ```xml
    schemaLocation
    ```

    ### Elemento raíz

    ```xml
    <cong:congreso>
    ```

    ### Ponentes

    Cada:

    ```xml
    <cong:ponente>
    ```

    debe contener:

    - nombre
    - organizacion

    y un atributo:

    ```xml
    id
    ```

    único.

    ### Charlas

    Cada:

    ```xml
    <cong:charla>
    ```

    debe contener:

    - titulo
    - resumen
    - sala

    y un atributo:

    ```xml
    ponente_ref
    ```

    que apunte a un ponente existente.

    ### Integridad referencial

    Utiliza:

    ```xml
    xs:key
    xs:keyref
    ```

    para garantizar la coherencia.

    ### Reutilización

    Crea un tipo:

    ```xml
    FormatoSala
    ```

    que permita:

    ```text
    Sala A
    Sala B
    Sala C
    ...
    ```

    mediante una restricción con patrón.

    ## Comprobación

    El documento debe contener:

    - al menos dos ponentes.
    - al menos tres charlas.

    Todas las referencias deberán ser válidas.

    ??? tip "Pista"

        Puedes reutilizar la estructura estudiada en el apartado:

        - `xs:key`
        - `xs:keyref`

        para resolver las relaciones entre ponentes y charlas.