# 1. ¿Qué es un lenguaje de marcas?

Imagina un texto en el que subrayas los títulos y añades notas como «esto es una lista» o «esta palabra es importante». Esas anotaciones ayudan a interpretar el contenido.

Un **lenguaje de marcas** (*markup language*) emplea etiquetas o símbolos que acompañan al texto para describir sus partes y, en algunos casos, indicar cómo representarlas.

## Marcar no es programar

El objetivo principal de un lenguaje de marcas es **describir y estructurar información**. Un lenguaje de programación, como Python o Java, permite expresar algoritmos, cálculos y decisiones.

| Marcado | Programación |
| --- | --- |
| «Este texto es un título». | «Calcula el precio total». |
| «Estos elementos forman una lista». | «Repite esta operación para cada producto». |
| Describe el contenido. | Define operaciones y comportamiento. |

## Un primer ejemplo en HTML

```html
<h1>Este es el título principal</h1>
<p>Este es un párrafo de introducción.</p>
```

- `<h1>` identifica un encabezado de nivel 1.
- `<p>` identifica un párrafo.
- `</h1>` y `</p>` cierran los elementos correspondientes.

El navegador interpreta las etiquetas y presenta el contenido. Las marcas no se muestran como parte del texto de la página.

!!! note "Contenido y estructura"
    «Este es el título principal» es el contenido. `<h1>` expresa su función dentro del documento.
