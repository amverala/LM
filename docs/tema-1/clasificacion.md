# 3. El «qué» y el «cómo»

Una forma útil de clasificar el marcado es distinguir si expresa la **apariencia** de un contenido o su **función**.

## Marcado de presentación

Se centra en el aspecto visual: tamaño, color, tipo de letra o alineación. Responde a preguntas como «¿cómo debe verse este texto?».

Mezclar las decisiones de estilo con el contenido puede dificultar los cambios y la reutilización. En la Web, **CSS** permite definir la presentación por separado.

## Marcado descriptivo o semántico

Describe qué representa cada fragmento. Responde a «¿qué es este contenido?».

| Elemento HTML | Significado |
| --- | --- |
| `<h1>` | Encabezado de nivel 1. |
| `<p>` | Párrafo. |
| `<article>` | Composición autónoma que puede tener sentido de forma independiente. |
| `<nav>` | Sección con enlaces de navegación. |

Un título no es simplemente un texto grande: es una parte de la jerarquía del documento. Esa estructura ayuda a los navegadores, las tecnologías de asistencia y los buscadores a interpretar la información.

## Estructura y estilo pueden trabajar juntos

```html
<h1 class="titulo">Lenguajes de marcas</h1>
```

```css
.titulo {
  color: teal;
  font-size: 2rem;
}
```

HTML identifica el encabezado; CSS define su apariencia.

!!! info "Una precisión sobre negrita y cursiva"
    En HTML actual, `<b>` y `<i>` tienen usos semánticos específicos; no deben entenderse únicamente como órdenes visuales. Para importancia se utiliza `<strong>` y para énfasis, `<em>`. Si solo quieres cambiar la apariencia, usa CSS.

Referencia de esta precisión: [semántica de texto en el estándar HTML](https://html.spec.whatwg.org/dev/text-level-semantics.html).
