# Actividades voluntarias XPath


## Documento XML de referencia

Todas las actividades de este documento se realizan sobre el siguiente XML:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<oferta>
    <vehiculo>
        <marca>Ford</marca>
        <modelo color="blanco">Focus RS 2017</modelo>
        <motor combustible="gasolina">duratorc 14</motor>
        <matricula>1234AAA</matricula>
        <kilometros>12500</kilometros>
        <precio_inicial>El precio inicial es de 12500 Euros</precio_inicial>
        <precio_oferta>Precio oferta 10000 Euros</precio_oferta>
        <extras>
            <extra valor="250">pintura metalizada</extra>
            <extra valor="300">llantas</extra>
            <extra valor="500">climatizador</extra>
        </extras>
        <foto imagen="fordblanco"/>
        <foto imagen="fordblanco2"/>
        <foto imagen="fordblanco3"/>
        <foto imagen="fordblanco4"/>
    </vehiculo>

    <vehiculo>
        <marca>MERCEDES-BENZ</marca>
        <modelo color="champagne">Clase CLA</modelo>
        <motor>CLA 200 d, 136cv</motor>
        <matricula>6565GTF</matricula>
        <kilometros>3500</kilometros>
        <precio_inicial>El precio inicial es de 22500 Euros</precio_inicial>
        <precio_oferta>Precio oferta 20000 Euros</precio_oferta>
        <extras>
            <extra valor="150">Navegador Garmin MAP PILOT</extra>
            <extra valor="350">Techo corredizo panoramico</extra>
            <extra valor="500">climatizador</extra>
        </extras>
        <foto imagen="mercedes"/>
        <foto imagen="mercedes2"/>
    </vehiculo>

    <vehiculo>
        <marca>Audi</marca>
        <modelo color="blanco">A5 S line coupe</modelo>
        <motor combustible="gasolina">2.0 TDI 190CV</motor>
        <matricula>1991KDB</matricula>
        <kilometros>100</kilometros>
        <precio_inicial>El precio inicial es de 36500 Euros</precio_inicial>
        <precio_oferta>Precio oferta 35000 Euros</precio_oferta>
        <extras>
            <extra valor="170">Camara de marcha atras</extra>
            <extra valor="180">Tapiceria en cuero Milano</extra>
        </extras>
        <foto imagen="audiA5"/>
        <foto imagen="audiA52"/>
    </vehiculo>

    <vehiculo>
        <marca>Opel</marca>
        <modelo color="gris">Astra</modelo>
        <motor combustible="diesel">Turbo 2.0</motor>
        <matricula>1235AAA</matricula>
        <kilometros>125000</kilometros>
        <precio_inicial>El precio inicial es de 10000 Euros</precio_inicial>
        <precio_oferta>Precio oferta 9000 Euros</precio_oferta>
        <extras>
            <extra valor="250">pintura metalizada</extra>
            <extra valor="200">spoiler trasero</extra>
            <extra valor="500">climatizador</extra>
        </extras>
        <foto imagen="opel"/>
        <foto/>
    </vehiculo>

    <vehiculo>
        <marca>Ford</marca>
        <modelo color="gris">Fiesta</modelo>
        <motor combustible="diesel">Turbo 1.5</motor>
        <matricula>1200BAA</matricula>
        <kilometros>180000</kilometros>
        <precio_inicial>El precio inicial es de 5000 Euros</precio_inicial>
        <precio_oferta>Precio oferta 4000 Euros</precio_oferta>
        <foto imagen="opel"/>
        <foto/>
    </vehiculo>
</oferta>
```

## Bloque 1. Consultas básicas XPath

??? question "Actividad 1. Obtener las marcas de los vehículos"

    Escribe una expresión XPath que permita obtener todas las marcas de los vehículos del documento XML.

    ??? success "Ver solución"

        ```xpath
        //marca
        ```

        Resultado esperado:

        ```text
        Ford
        MERCEDES-BENZ
        Audi
        Opel
        Ford
        ```

---

??? question "Actividad 2. Obtener los extras que tienen los vehículos"

    Escribe una expresión XPath que permita obtener todos los elementos `extra` del documento.

    ??? success "Ver solución"

        ```xpath
        //extra
        ```

        Resultado esperado:

        ```xml
        <extra valor="250">pintura metalizada</extra>

        <extra valor="300">llantas</extra>

        ...
        ```

---

??? question "Actividad 3. Obtener las marcas y los modelos de los vehículos"

    Escribe una consulta XPath que permita obtener todos los elementos `marca` y `modelo`.

    ??? success "Ver solución"

        ```xpath
        //marca | //modelo
        ```

        El operador:

        ```xpath
        |
        ```

        permite unir dos conjuntos de resultados.

---

??? question "Actividad 4. Obtener los combustibles que hay"

    Escribe una expresión XPath que permita obtener todos los tipos de combustible presentes en el documento.

    ??? success "Ver solución"

        ```xpath
        //motor/@combustible
        ```

        Resultado esperado:

        ```text
        gasolina
        gasolina
        diesel
        diesel
        ```

---

??? question "Actividad 5. Obtener los extras, pero solamente el texto"

    Escribe una expresión XPath que devuelva únicamente el contenido textual de cada extra.

    ??? success "Ver solución"

        ```xpath
        //extra/text()
        ```

        Resultado esperado:

        ```text
        pintura metalizada
        llantas
        climatizador
        ...
        ```

---

??? question "Actividad 6. Obtener los datos del coche con matrícula 1991KDB"

    Localiza el vehículo cuya matrícula sea `1991KDB`.

    ??? success "Ver solución"

        ```xpath
        //vehiculo[matricula='1991KDB']
        ```

        La consulta devuelve el elemento completo:

        ```xml
        <vehiculo>
            ...
        </vehiculo>
        ```

---

??? question "Actividad 7. Obtener los vehículos que tengan extras"

    Selecciona todos los vehículos que contengan el elemento `extras`.

    ??? success "Ver solución"

        ```xpath
        //vehiculo[extras]
        ```

        La condición comprueba la existencia del elemento `extras`.

---

??? question "Actividad 8. Obtener los extras del coche con matrícula 6565GTF"

    Obtén todos los extras del vehículo cuya matrícula sea `6565GTF`.

    ??? success "Ver solución"

        ```xpath
        //vehiculo[matricula='6565GTF']/extras/extra
        ```

        También puede escribirse:

        ```xpath
        //vehiculo[matricula='6565GTF']//extra
        ```

---

??? question "Actividad 9. Obtener los vehículos que tengan motor a gasolina"

    Selecciona todos los vehículos con combustible de tipo gasolina.

    ??? success "Ver solución"

        ```xpath
        //vehiculo[motor/@combustible='gasolina']
        ```

        La condición filtra los vehículos según el valor del atributo.

---

??? question "Actividad 10. Obtener el modelo de los vehículos que tengan motor a gasolina"

    Devuelve únicamente el modelo de los vehículos cuyo combustible sea gasolina.

    ??? success "Ver solución"

        ```xpath
        //vehiculo[motor/@combustible='gasolina']/modelo
        ```

        Resultado esperado:

        ```text
        Focus RS 2017

        A5 S line coupe
        ```

---

## Autoevaluación

!!! tip "Comprueba tus conocimientos"

    Al finalizar este bloque deberías ser capaz de:

    - Navegar utilizando rutas XPath.
    - Seleccionar elementos concretos.
    - Acceder a atributos mediante `@`.
    - Utilizar filtros mediante predicados.
    - Combinar consultas mediante el operador `|`.
    - Diferenciar entre elementos y texto (`text()`).

    Si has resuelto correctamente las 10 actividades, ya dominas las consultas XPath más habituales.

## Bloque 2. Selección y filtrado XPath

??? question "Actividad 11. Obtener los extras de los vehículos a gasolina que tengan el extra 'climatizador'"

    Selecciona los extras de los vehículos con motor de gasolina que además dispongan del extra `climatizador`.

    ??? success "Ver solución"

        ```xpath
        //vehiculo[
            motor/@combustible='gasolina'
            and
            extras/extra='climatizador'
        ]/extras/extra
        ```

        Se seleccionan primero los vehículos que cumplen ambas condiciones y después se muestran sus extras.

---

??? question "Actividad 12. Obtener los vehículos que tengan el extra 'climatizador'"

    Localiza todos los vehículos que incluyan un extra denominado `climatizador`.

    ??? success "Ver solución"

        ```xpath
        //vehiculo[extras/extra='climatizador']
        ```

        La condición comprueba si existe un elemento `extra` cuyo contenido sea:

        ```text
        climatizador
        ```

---

??? question "Actividad 13. Obtener los vehículos que tengan el atributo combustible"

    Devuelve todos los vehículos cuyo elemento `motor` posea el atributo `combustible`.

    ??? success "Ver solución"

        ```xpath
        //vehiculo[motor/@combustible]
        ```

        La expresión comprueba únicamente la existencia del atributo.

---

??? question "Actividad 14. Obtener todos los elementos que tengan algún atributo"

    Selecciona cualquier elemento que posea al menos un atributo.

    ??? success "Ver solución"

        ```xpath
        //*[@*]
        ```

        Donde:

        ```xpath
        *
        ```

        significa cualquier elemento y:

        ```xpath
        @*
        ```

        cualquier atributo.

---

??? question "Actividad 15. Obtener el texto de los elementos que tengan algún atributo"

    Devuelve el contenido textual de los elementos que posean atributos.

    ??? success "Ver solución"

        ```xpath
        //*[@*]/text()
        ```

        Algunos resultados serían:

        ```text
        Focus RS 2017
        duratorc 14
        pintura metalizada
        llantas
        ...
        ```

---

??? question "Actividad 16. Obtener los vehículos con motor diésel y color gris"

    Selecciona los vehículos que cumplan simultáneamente:

    - Motor diésel.
    - Modelo de color gris.

    ??? success "Ver solución"

        ```xpath
        //vehiculo[
            motor/@combustible='diesel'
            and
            modelo/@color='gris'
        ]
        ```

        El operador `and` obliga a cumplir ambas condiciones.

---

??? question "Actividad 17. Obtener todos los elementos"

    Selecciona todos los elementos del documento XML.

    ??? success "Ver solución"

        ```xpath
        //*
        ```

        Esta expresión devuelve todos los nodos de tipo elemento.

---

??? question "Actividad 18. Obtener los textos de todos los elementos"

    Obtén únicamente el contenido textual de todos los elementos.

    ??? success "Ver solución"

        ```xpath
        //text()
        ```

        Resultado parcial:

        ```text
        Ford
        Focus RS 2017
        duratorc 14
        1234AAA
        ...
        ```

---

??? question "Actividad 19. Obtener todos los elementos con tres ancestros"

    Selecciona los elementos que tengan exactamente tres ancestros.

    ??? success "Ver solución"

        ```xpath
        //*[count(ancestor::*)=3]
        ```

        Explicación:

        - `ancestor::*` obtiene todos los ancestros.
        - `count()` cuenta cuántos existen.
        - Solo se seleccionan aquellos elementos cuyo resultado sea 3.

---

??? question "Actividad 20. Obtener todos los elementos que tengan un atributo valor"

    Selecciona todos los elementos que posean un atributo denominado `valor`.

    ??? success "Ver solución"

        ```xpath
        //*[@valor]
        ```

        En este XML devolverá los elementos:

        ```xml
        <extra valor="250">

        <extra valor="300">

        <extra valor="500">

        ...
        ```

---

## Autoevaluación

!!! tip "Comprueba tus conocimientos"

    Al terminar este bloque deberías dominar:

    - Selección mediante atributos.
    - Comprobación de existencia de atributos.
    - Uso de operadores lógicos (`and`).
    - Selección universal mediante `*`.
    - Obtención de texto con `text()`.
    - Uso de funciones XPath como `count()`.
    - Navegación mediante el eje `ancestor::`.

    Si has resuelto correctamente estas actividades, ya manejas la mayoría de los filtros XPath utilizados en ejercicios y exámenes.

## Bloque 3. Consultas XPath avanzadas

??? question "Actividad 21. Obtener los vehículos que tengan una foto sin el atributo imagen"

    Localiza los vehículos que contengan alguna etiqueta `foto` sin el atributo `imagen`.

    ??? success "Ver solución"

        ```xpath
        //vehiculo[foto[not(@imagen)]]
        ```

        Explicación:

        - `foto` selecciona las fotografías del vehículo.
        - `not(@imagen)` comprueba que el atributo no exista.
        - Se devolverá el vehículo completo.

---

??? question "Actividad 22. Obtener los vehículos con marca Ford y con 12500 kilómetros"

    Selecciona los vehículos que cumplan simultáneamente:

    - Marca Ford.
    - 12500 kilómetros.

    ??? success "Ver solución"

        ```xpath
        //vehiculo[
            marca='Ford'
            and
            kilometros='12500'
        ]
        ```

        Ambas condiciones deben cumplirse al mismo tiempo.

---

??? question "Actividad 23. Obtener los vehículos con marca Ford o con 12500 kilómetros"

    Selecciona los vehículos que tengan:

    - Marca Ford.
    - O bien 12500 kilómetros.

    ??? success "Ver solución"

        ```xpath
        //vehiculo[
            marca='Ford'
            or
            kilometros='12500'
        ]
        ```

        El operador:

        ```xpath
        or
        ```

        permite que se cumpla cualquiera de las dos condiciones.

---

??? question "Actividad 24. Obtener el segundo elemento extra de cada vehículo"

    Devuelve el segundo elemento `extra` asociado a cada vehículo.

    ??? success "Ver solución"

        ```xpath
        //vehiculo/extras/extra[2]
        ```

        También puede escribirse:

        ```xpath
        //extra[position()=2]
        ```

        aunque la primera expresión es más precisa.

        Resultado esperado:

        ```xml
        <extra valor="300">llantas</extra>

        <extra valor="350">
            Techo corredizo panoramico
        </extra>

        <extra valor="180">
            Tapiceria en cuero Milano
        </extra>

        <extra valor="200">
            spoiler trasero
        </extra>
        ```

---

??? question "Actividad 25. Obtener el último vehículo del documento"

    Selecciona el último elemento `vehiculo` del documento XML.

    ??? success "Ver solución"

        ```xpath
        //vehiculo[last()]
        ```

        También es válida:

        ```xpath
        //vehiculo[position()=last()]
        ```

        El resultado será:

        ```xml
        <vehiculo>

            <marca>Ford</marca>

            <modelo color="gris">
                Fiesta
            </modelo>

            ...

        </vehiculo>
        ```

---

## Ejercicio integrador del bloque

??? question "Reto final del bloque 3"

    Construye una única consulta XPath que obtenga:

    - Vehículos Ford.
    - Con motor diésel.
    - De color gris.

    ??? success "Ver solución"

        ```xpath
        //vehiculo[
            marca='Ford'
            and
            motor/@combustible='diesel'
            and
            modelo/@color='gris'
        ]
        ```

        Esta consulta combina:

        - Selección por contenido de elementos.
        - Selección por atributos.
        - Operadores lógicos.

        Es un buen ejemplo de consulta XPath compleja.

---

## Autoevaluación final

!!! success "Objetivos alcanzados"

    Al finalizar las actividades voluntarias XPath deberías ser capaz de:

    ✅ Navegar por cualquier documento XML.

    ✅ Utilizar rutas absolutas y relativas.

    ✅ Seleccionar elementos y atributos.

    ✅ Trabajar con ejes XPath.

    ✅ Utilizar predicados y filtros.

    ✅ Emplear operadores lógicos.

    ✅ Utilizar funciones como:

    - `position()`
    - `last()`
    - `count()`
    - `text()`
    - `contains()`
    - `starts-with()`

    ✅ Construir consultas XPath complejas.

---

## Próximo nivel

!!! info "Actividades evaluables"

    Si has completado correctamente los ejercicios 1 a 25, ya estás preparado para afrontar las actividades evaluables XPath (ejercicios 26 a 30), donde se utilizarán funciones avanzadas como:

    - `count()`
    - `string-length()`
    - `starts-with()`
    - `name()`

    Estas actividades requieren un dominio más profundo de XPath y suelen aparecer en pruebas prácticas y exámenes.