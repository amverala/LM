## 6. Definición de elementos

En los apartados anteriores aprendiste cómo se estructura un esquema XML Schema y cómo asociarlo a un documento XML.

Ahora vamos a estudiar los elementos que permiten definir la estructura de los documentos XML.

El elemento más importante de XML Schema es:

```xml
<xs:element>
```

Prácticamente cualquier esquema XSD se construye a partir de declaraciones de elementos.

## 6.1 El elemento xs:element

La sintaxis más sencilla para definir un elemento es:

```xml
<xs:element name="nombre" type="xs:string"/>
```

En esta declaración:

- `xs:element` indica que estamos definiendo un elemento XML.
- `name` especifica el nombre del elemento.
- `type` indica el tipo de dato que contendrá.

Por ejemplo:

```xml
<xs:element name="ciudad" type="xs:string"/>
```

permitirá elementos XML como:

```xml
<ciudad>Valencia</ciudad>
```

!!! note "Idea clave"

    Todo elemento XML que queramos validar debe estar definido dentro del esquema XSD.

## 6.2 Tipos de datos simples

Los tipos simples contienen únicamente datos y no pueden incluir otros elementos en su interior.

| Tipo | Descripción | Ejemplo |
| --- | --- | --- |
| xs:string | Texto | Valencia |
| xs:integer | Número entero | 25 |
| xs:decimal | Número decimal | 19.95 |
| xs:boolean | Valor lógico | true |
| xs:date | Fecha | 2026-10-18 |
| xs:time | Hora | 14:30:00 |
| xs:anyURI | Dirección URI | https://ejemplo.com |

### Ejemplos

```xml
<xs:element name="nombre" type="xs:string"/>
```

```xml
<xs:element name="edad" type="xs:integer"/>
```

```xml
<xs:element name="precio" type="xs:decimal"/>
```

```xml
<xs:element name="activo" type="xs:boolean"/>
```

## 6.3 Tipos simples en XML

Las definiciones anteriores producen documentos XML como:

```xml
<nombre>Ana García</nombre>
```

```xml
<edad>24</edad>
```

```xml
<precio>29.95</precio>
```

```xml
<activo>true</activo>
```

El validador comprobará automáticamente que el contenido coincide con el tipo especificado.

!!! warning "Importante"

    XML Schema valida tanto la estructura como el tipo de dato almacenado en cada elemento.

## 6.4 ¿Qué es un tipo complejo?

Un tipo complejo es un elemento que contiene otros elementos y/o atributos.

```xml
<persona>

    <nombre>Ana García</nombre>

    <edad>24</edad>

</persona>
```

## 6.5 Definiendo tipos complejos

Un tipo simple contiene un único valor. Un tipo complejo contiene otros elementos, atributos o ambos. Por ello, cuando un elemento tiene estructura interna, debe definirse mediante **`xs:complexType.`**

```xml
<xs:element name="persona">

    <xs:complexType>

        <xs:sequence>

            <xs:element name="nombre" type="xs:string"/>

            <xs:element name="edad" type="xs:integer"/>

        </xs:sequence>

    </xs:complexType>

</xs:element>
```

## 6.6 Indicadores de composición

### xs:sequence

Los elementos deben aparecer exactamente en el orden indicado.

### xs:all

Todos los elementos deben aparecer, pero el orden no importa.

### xs:choice

Permite seleccionar una única opción entre varias.

## 6.7 Comparativa de compositores

| Compositor | Todos obligatorios | Orden obligatorio | Una sola opción |
| --- | --- | --- | --- |
| xs:sequence | Sí | Sí | No |
| xs:all | Sí | No | No |
| xs:choice | No | No | Sí |

## Ejercicios propuestos

### Ejercicio 1

Clasifica: xs:string, xs:boolean, xs:integer, xs:date.

??? tip "Solución"

    Todos son tipos simples.

### Ejercicio 2

¿Es correcto <edad>veinte</edad> si el tipo es xs:integer?

??? tip "Solución"

    No. El valor veinte no sería válido porque xs:integer solo permite números enteros

### Ejercicio 3

¿Para qué sirve xs:choice?

??? tip "Solución"

    Permite elegir una sola opción entre varias.

### Ejercicio 4

Crea un elemento producto con nombre y precio.

??? tip "Solución"

    ```xml
    <xs:element name="producto">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="nombre" type="xs:string"/>
                <xs:element name="precio" type="xs:decimal"/>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
    ```

### Ejercicio 5

Explica la diferencia entre un tipo simple y un tipo complejo.

??? tip "Solución"

    Un **tipo simple** contiene un único valor y no puede incluir otros elementos ni atributos. En cambio, un elemento definido mediante **`xs:complexType`** puede contener otros elementos, atributos o ambos, permitiendo definir estructuras más completas.
    
## Actividad de reflexión

!!! question "Piensa"

    ¿Qué ventajas aporta que XML Schema permita trabajar con distintos tipos de datos?
