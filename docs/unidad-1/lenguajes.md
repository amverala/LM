# 4. HTML, XML, Markdown y Wikitext

Todos incorporan marcas, pero no tienen la misma finalidad ni la misma sintaxis.

## HTML · Estructurar la Web

**HTML** (*HyperText Markup Language*) describe la estructura de las páginas web. Utiliza elementos definidos por el estándar, como `<h1>`, `<p>`, `<img>` y `<footer>`.

Los navegadores interpretan HTML. Elementos como `<article>`, `<section>` y `<nav>` permiten expresar la función de distintas partes de una página.

```html
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>El Blog del Café</title>
  </head>
  <body>
    <header>
      <h1>El Blog del Café</h1>
    </header>
    <main>
      <article>
        <h2>¿Es el café la mejor bebida?</h2>
        <p>Un estudio <strong>reciente</strong> explora sus beneficios...</p>
      </article>
    </main>
  </body>
</html>
```

En este ejemplo, `<head>` contiene metadatos y `<body>` el contenido de la página. El texto sobre café es únicamente un ejemplo de marcado.

**Caso de uso:** una página web con encabezados, artículos, imágenes y enlaces.

## XML · Describir datos

**XML** (*eXtensible Markup Language*) permite definir etiquetas que representan los datos de un dominio. No determina por sí mismo cómo se muestran.

```xml
<pedido>
  <cliente id="C001">
    <nombre>Ana Torres</nombre>
    <email>ana.t@example.com</email>
  </cliente>
  <producto id="P025">
    <nombre>Cafetera Italiana</nombre>
    <precio divisa="EUR">29.99</precio>
  </producto>
</pedido>
```

`<pedido>` es el elemento raíz. Los elementos describen cliente y producto; los atributos `id` y `divisa` añaden información.

XML exige respetar reglas de sintaxis: anidar correctamente los elementos, cerrar las etiquetas, distinguir mayúsculas de minúsculas y escribir los valores de los atributos entre comillas.

!!! note "Extensible no significa arbitrario"
    Puedes diseñar las etiquetas, pero los sistemas que intercambian datos deben acordar su significado. Un esquema puede definir qué estructuras y valores son válidos. La sintaxis estricta no evita por sí sola todos los errores de datos.

**Casos de uso:** configuración, documentos estructurados, facturas electrónicas e intercambio entre sistemas. JSON es otra opción habitual para intercambiar datos; no es un lenguaje de marcas.

## Markdown · Escribir con sencillez

**Markdown** utiliza signos de puntuación para representar encabezados, énfasis, listas y enlaces. El archivo sigue siendo fácil de leer antes de convertirlo a HTML.

```markdown
# Este es el título principal

Este es un párrafo de introducción con **negrita** y *cursiva*.

- Primer elemento
- Segundo elemento

[Visitar un sitio](https://example.com)
```

| Sintaxis | Función |
| --- | --- |
| `# Título` | Encabezado de nivel 1. |
| `## Apartado` | Encabezado de nivel 2. |
| `**texto**` | Negrita. |
| `*texto*` | Cursiva. |
| `- Elemento` | Elemento de lista no ordenada. |
| `[Texto](https://example.com)` | Enlace. |

Existen variantes y extensiones de Markdown. Algunas funciones, como tablas o avisos, dependen del procesador utilizado. Los símbolos empleados por un chat no tienen por qué coincidir exactamente con Markdown.

**Casos de uso:** documentación, archivos `README.md`, apuntes y blogs. El contenido de este sitio también está escrito en Markdown.

## Wikitext · Escribir en una wiki

**Wikitext** es el marcado utilizado en sistemas wiki como MediaWiki, el software de Wikipedia. Facilita los enlaces entre páginas y la edición colaborativa.

```text
== Encabezado de sección ==

Esto es un párrafo con texto en '''negrita''' y en ''cursiva''.

Para crear un enlace a otra página de la wiki:
* [[Nombre de la página]]

Para crear una lista numerada:
# Primer elemento
# Segundo elemento
```

- Los signos `=` delimitan encabezados.
- Los apóstrofos delimitan negrita y cursiva.
- `[[Nombre de la página]]` crea un enlace interno.
- `*` introduce una lista no ordenada y `#` una lista numerada.

También permite utilizar determinadas etiquetas HTML y plantillas para reutilizar contenido. Su sintaxis depende del motor wiki: no es simplemente una combinación de HTML y Markdown.

**Caso de uso:** editar artículos y páginas enlazadas dentro de una wiki.
