# 2. Estructura de un documento XML

Todo documento XML sigue una organización básica que facilita su lectura y procesamiento.

Aunque los datos que contenga puedan ser muy diferentes, todos los documentos XML comparten una estructura similar.

## Un ejemplo completo

```xml
<?xml version="1.0" encoding="UTF-8"?>
<agenda>
    <contacto>
        <nombre>Pepe</nombre>
    </contacto>
</agenda>
```

En este documento podemos identificar varias partes.

## La declaración XML

La primera línea suele indicar la versión de XML y la codificación utilizada.

```xml
<?xml version="1.0" encoding="UTF-8"?>
```

### Versión

Actualmente la más habitual es:

```xml
version="1.0"
```

### Codificación

La codificación recomendada es:

```xml
encoding="UTF-8"
```

UTF‑8 permite representar correctamente caracteres de diferentes idiomas.

!!! note "Buena práctica"
    Aunque la declaración XML es opcional, es recomendable incluirla siempre.

## Declaración de tipo de documento

Algunos documentos XML incluyen una declaración adicional denominada **DTD** (*Document Type Definition*).

```xml
<!DOCTYPE agenda SYSTEM "agenda.dtd">
```

Su función es describir qué estructura debe tener el documento.

La validación mediante DTD se estudiará en una unidad posterior.

## El elemento raíz

Todo documento XML debe tener un único elemento principal que contenga al resto.

```xml
<agenda>
    ...
</agenda>
```

Este elemento se denomina **elemento raíz**.

✅ Correcto

```xml
<agenda>
    <contacto>Pepe</contacto>
</agenda>
```

❌ Incorrecto

```xml
<nombre>Pepe</nombre>
<telefono>123456789</telefono>
```

En el segundo ejemplo existen dos elementos principales independientes.

## Los elementos

Los elementos son la unidad básica de información en XML.

```xml
<nombre>Pepe</nombre>
```

Un elemento está formado por:

- Una etiqueta de apertura.
- El contenido.
- Una etiqueta de cierre.

### Elementos anidados

Los elementos pueden contener otros elementos.

```xml
<contacto>
    <nombre>Pepe</nombre>
    <telefono>123456789</telefono>
</contacto>
```

Esta estructura permite organizar la información jerárquicamente.

## Elementos vacíos

Cuando un elemento no contiene información puede escribirse de forma abreviada.

```xml
<foto/>
```

Es equivalente a:

```xml
<foto></foto>
```

Los elementos vacíos suelen utilizarse cuando un dato existe, pero no necesita contenido textual.

Por ejemplo:

```xml
<salto-linea/>
```

```xml
<imagen/>
```

## Atributos

Los atributos permiten añadir información adicional a un elemento.

```xml
<libro idioma="es">
    <titulo>XML para principiantes</titulo>
</libro>
```

En este caso:

- `libro` es el elemento.
- `idioma` es el atributo.
- `es` es el valor del atributo.

### ¿Elemento o atributo?

Una regla sencilla consiste en utilizar:

- **Elementos** para los datos principales.
- **Atributos** para describir esos datos.

Por ejemplo:

```xml
<libro isbn="9788441543020">
    <titulo>XML para principiantes</titulo>
</libro>
```

El título es el dato principal.

El ISBN describe al libro.

!!! note "Importante"
    No existe una regla obligatoria. Esta recomendación ayuda a crear documentos más legibles y fáciles de mantener.

## Comentarios

Los comentarios permiten añadir anotaciones para quien lea el código.

```xml
<!-- Este contacto pertenece al departamento de ventas -->
```

Los comentarios son ignorados por el analizador XML.

## Caracteres especiales

Algunos caracteres tienen un significado especial dentro de la sintaxis XML. Cuando queremos mostrarlos como texto debemos utilizar entidades.

| Carácter | Entidad |
| --- | --- |
| `<` | `&lt;` |
| `>` | `&gt;` |
| `&` | `&amp;` |
| `"` | `&quot;` |
| `'` | `&apos;` |

Por ejemplo:

```xml
<mensaje>5 &lt; 10</mensaje>
```

## Secciones CDATA

Cuando necesitamos incluir mucho texto o fragmentos de código, podemos utilizar una sección CDATA.

```xml
<![CDATA[
if (a < b && b > c) {
    console.log("Hola");
}
]]>
```

Dentro de una sección CDATA los caracteres especiales no necesitan sustituirse por entidades.

Las secciones CDATA son especialmente útiles cuando se almacenan fragmentos de código o bloques de texto que contienen muchos caracteres reservados.

!!! tip "Piensa en la estructura"
    XML no se centra en cómo se ve la información, sino en cómo se organiza y describe.

## Comprueba lo aprendido

Observa el siguiente documento XML:

```xml
<?xml version="1.0" encoding="UTF-8"?>

<persona edad="18">
    <nombre>Ana</nombre>
</persona>
```

Responde:

1. ¿Cuál es la declaración XML?
2. ¿Cuál es el elemento raíz?
3. ¿Qué atributo aparece en el documento?
4. ¿Cuál es el valor del atributo?
5. ¿Qué elemento hijo contiene el elemento raíz?
6. ¿Qué codificación utiliza el documento?

!!! tip "Autocomprobación"
    Si eres capaz de responder correctamente a estas preguntas, ya puedes identificar los componentes fundamentales de cualquier documento XML sencillo.

## Resumen

- Todo documento XML debería incluir una declaración XML.
- Puede incorporar una DTD para validar su estructura.
- Debe existir un único elemento raíz.
- Los elementos pueden contener otros elementos.
- Los atributos añaden información complementaria.
- Existen caracteres especiales que deben escaparse.
- CDATA permite incluir texto sin interpretar las marcas.
