## 3. XML Schema: estructura y uso

Hasta ahora hemos aprendido qué es XML Schema y por qué los espacios de nombres ayudan a evitar conflictos entre distintos vocabularios XML.

En este apartado estudiaremos la estructura básica de un esquema XSD y construiremos nuestro primer documento de validación.

## 3.1 ¿Qué es un documento XSD?

Un documento XSD es un archivo XML cuya finalidad es definir las reglas que debe cumplir otro documento XML.

Mientras que un documento XML almacena información, un documento XSD describe:

- Los elementos permitidos.
- Su organización.
- Los tipos de datos utilizados.
- Las relaciones entre los elementos.
- Las restricciones de validación.

Podemos imaginarlo como un plano que describe cómo debe construirse un documento XML válido.

Por ejemplo:

```xml
<correo>
    <de>origen@email.com</de>
    <para>destino@email.com</para>
    <mensaje>Hola</mensaje>
</correo>
```

Un esquema XSD permitirá comprobar automáticamente si este documento tiene la estructura correcta.

!!! note "Idea clave"

    Un documento XML almacena datos. Un documento XSD define las reglas que deben cumplir dichos datos.

## 3.2 La estructura básica de un esquema

Un archivo XSD es, en esencia, un documento XML.

La estructura fundamental de cualquier archivo XSD es siempre la misma.

```xml
<?xml version="1.0" encoding="UTF-8"?>

<xs:schema
    xmlns:xs="http://www.w3.org/2001/XMLSchema">

</xs:schema>
```

Todo esquema contiene tres elementos fundamentales:

- Declaración XML.
- Elemento raíz `xs:schema`.
- Declaración del espacio de nombres de XML Schema.

### Declaración XML

Como cualquier documento XML, un esquema comienza con:

```xml
<?xml version="1.0" encoding="UTF-8"?>
```

### Elemento raíz xs:schema

Todo el contenido del esquema se define dentro de:

```xml
<xs:schema>
</xs:schema>
```

### Namespace oficial de XML Schema

```xml
xmlns:xs="http://www.w3.org/2001/XMLSchema"
```

## 3.3 El lenguaje XML Schema

```xml
<xs:element name="nombre" type="xs:string"/>
```

- `xs:element` define un elemento XML.
- `name` indica su nombre.
- `type` indica el tipo de dato que contendrá.

## 3.4 Nuestro primer esquema XSD

```xml
<?xml version="1.0" encoding="UTF-8"?>

<xs:schema xmlns:xs="http://www.w3.org/2001/XMLSchema">

    <xs:element name="correo">

        <xs:complexType>

            <xs:sequence>

                <xs:element name="de" type="xs:string"/>

                <xs:element name="para" type="xs:string"/>

                <xs:element name="mensaje" type="xs:string"/>

            </xs:sequence>

        </xs:complexType>

    </xs:element>

</xs:schema>
```

### ¿Por qué XSD utiliza XML?

Observa un detalle importante: el propio esquema está escrito utilizando XML.

DTD utilizaba una sintaxis completamente diferente. En cambio, XML Schema aprovecha el mismo lenguaje XML para definir documentos XML.

Esto proporciona importantes ventajas:

- Resulta más fácil de aprender.
- Puede procesarse con herramientas XML estándar.
- Permite crear estructuras complejas.
- Facilita la reutilización de componentes.
- Integra de forma natural los espacios de nombres.

## 3.5 Analizando el esquema línea a línea

La declaración XML indica la versión y codificación utilizadas.

`xs:schema` define el comienzo del esquema y declara el espacio de nombres oficial de XML Schema.

`xs:element name="correo"` define el elemento raíz.

`xs:complexType` indica que contiene otros elementos.

`xs:sequence` obliga a respetar el orden definido.

Los elementos `de`, `para` y `mensaje` son obligatorios y contienen texto.

## 3.6 Resumen visual de la estructura

```text
xs:schema
│
└── xs:element (correo)
     │
     └── xs:complexType
          │
          └── xs:sequence
               │
               ├── xs:element (de)
               ├── xs:element (para)
               └── xs:element (mensaje)
```

## Ejercicios propuestos

### Ejercicio 1 · Identificando los elementos del esquema

1. ¿Cuál es el elemento raíz definido?
2. ¿Qué elementos hijos contiene?
3. ¿Qué tipo de dato utilizan?

??? tip "Solución"

    1. correo
    2. de, para y mensaje
    3. xs:string

### Ejercicio 2 · Interpretando una declaración

¿Qué significa la siguiente línea?

```xml
<xs:element name="nombre" type="xs:string"/>
```

??? tip "Solución"

    Define un elemento llamado nombre cuyo contenido será texto.

### Ejercicio 3 · Identificando elementos propios de XSD

```text
xs:schema
xs:element
correo
mensaje
xs:sequence
```

??? tip "Solución"

    xs:schema, xs:element y xs:sequence.

### Ejercicio 4 · Modificando el esquema

Añade un nuevo elemento llamado asunto.

??? tip "Solución"

    <xs:element name="asunto" type="xs:string"/>

### Ejercicio 5 · Comprensión global

Explica la diferencia entre XML y XSD.

??? tip "Solución"

    XML contiene los datos. XSD define las reglas que deben cumplir.

## Actividad de reflexión

!!! question "Piensa"

    ¿Por qué crees que XML Schema utiliza XML para definir otros documentos XML?

??? tip "Posible respuesta"

    Porque permite reutilizar herramientas XML existentes y facilita la creación de esquemas más complejos.

!!! tip "Al terminar este apartado"

    Deberías ser capaz de reconocer la estructura básica de un esquema XSD e identificar sus componentes principales.
