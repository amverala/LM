# 1. ¿Qué es XML?

En la unidad anterior vimos que los lenguajes de marcas permiten describir la estructura y el significado de un documento.

XML lleva esta idea un paso más allá: permite crear nuestras propias etiquetas para representar cualquier tipo de información.

## Un lenguaje para describir datos

XML significa **eXtensible Markup Language**.

Su objetivo principal es almacenar, organizar e intercambiar información de forma estructurada.

A diferencia de HTML, XML no incluye etiquetas predefinidas.

Cada aplicación puede definir las etiquetas que necesite.

```xml
<alumno>
    <nombre>Ana</nombre>
    <edad>18</edad>
</alumno>
```

En este ejemplo:

- `alumno` describe una persona.
- `nombre` almacena su nombre.
- `edad` almacena su edad.

## XML es un metalenguaje

Se dice que XML es un **metalenguaje** porque permite crear otros lenguajes de marcas.

Por ejemplo, podríamos representar videojuegos:

```xml
<videojuego>
    <titulo>Minecraft</titulo>
    <plataforma>PC</plataforma>
</videojuego>
```

o recetas de cocina:

```xml
<receta>
    <nombre>Tortilla de patatas</nombre>
    <raciones>4</raciones>
</receta>
```

Las etiquetas son diferentes, pero ambos documentos siguen las reglas de XML.

!!! note "Idea importante"
    XML no define qué etiquetas debes utilizar. Define cómo deben construirse correctamente.

## XML frente a HTML

Aunque ambos utilizan etiquetas, tienen objetivos distintos.

| XML | HTML |
|------|------|
| Describe datos | Muestra datos |
| Las etiquetas las define el desarrollador | Las etiquetas están predefinidas |
| Se centra en el significado | Se centra en la presentación |
| Facilita el intercambio de información | Facilita la visualización de información |

Por ejemplo:

```xml
<precio>29.95</precio>
```

describe un dato.

Mientras que:

```html
<p>29,95 €</p>
```

solo indica cómo mostrar ese contenido en una página web.

## ¿Y qué es XHTML?

XHTML es una versión de HTML escrita siguiendo las reglas estrictas de XML.

Mientras que un navegador suele corregir errores de HTML automáticamente, XHTML exige que todas las etiquetas estén correctamente escritas y cerradas.

Gracias a ello, el código resulta más consistente y fácil de procesar.

## Resumen

- XML permite crear etiquetas propias.
- XML se utiliza para describir información.
- XML es un metalenguaje.
- HTML y XML tienen propósitos diferentes.
- XHTML combina HTML con las reglas de XML.

!!! tip "Lo más importante"
    No intentes pensar en XML como una página web. Piensa en él como una forma de representar información de manera organizada y comprensible para personas y programas.
