# 3. Documentos XML bien formados

Un documento XML no es válido simplemente por contener etiquetas.

Para que cualquier programa pueda interpretarlo correctamente, debe cumplir una serie de reglas sintácticas obligatorias.

Cuando un documento cumple todas estas reglas se dice que está **bien formado**.

!!! note "Importante"
    Un documento que no esté bien formado será rechazado por cualquier analizador XML, aunque contenga información correcta.

## Regla 1. Debe existir un único elemento raíz

Todo documento XML debe tener un único elemento principal que contenga al resto.

✅ Correcto

```xml
<nombres>
    <nombre>Juan</nombre>
    <nombre>María</nombre>
</nombres>
```

❌ Incorrecto

```xml
<nombre>Juan</nombre>
<nombre>María</nombre>
```

En el segundo ejemplo existen dos elementos principales independientes.

## Regla 2. Todas las etiquetas deben cerrarse

Cada etiqueta de apertura debe tener su correspondiente etiqueta de cierre.

✅ Correcto

```xml
<nombre>Juan</nombre>
```

También son válidos los elementos vacíos:

```xml
<foto/>
```

❌ Incorrecto

```xml
<nombre>Juan
```

## Regla 3. Las etiquetas deben estar correctamente anidadas

Cuando un elemento contiene otros elementos, deben cerrarse en el orden inverso al que se abrieron.

✅ Correcto

```xml
<p>
    <strong>
        Texto destacado
    </strong>
</p>
```

❌ Incorrecto

```xml
<p>
    <strong>
        Texto destacado
</p>
</strong>
```

!!! warning "Error muy frecuente"
    El anidamiento incorrecto es uno de los errores más habituales cuando empezamos a trabajar con XML.

## Regla 4. XML distingue mayúsculas y minúsculas

XML es sensible a mayúsculas y minúsculas.

Por tanto, estas etiquetas son diferentes:

```xml
<Libro>
```

```xml
<libro>
```

✅ Correcto

```xml
<Libro>
</Libro>
```

❌ Incorrecto

```xml
<Libro>
</libro>
```

## Regla 5. Los nombres deben ser válidos

Los nombres de los elementos deben seguir unas normas básicas.

### Pueden comenzar por

- Letras.
- Guion bajo (`_`).

✅ Correcto

```xml
<persona>
```

```xml
<nombre_completo>
```

### No pueden comenzar por

- Números.
- Símbolos de puntuación.
- La palabra `xml`.

❌ Incorrecto

```xml
<123persona>
```

```xml
<xmlLibro>
```

### Otras recomendaciones

- Evita los espacios.
- Utiliza siempre el mismo criterio de escritura.
- Mantén nombres claros y descriptivos.

Por ejemplo:

```xml
<tipoSuscripcion>
```

o

```xml
<tipo_suscripcion>
```

Lo importante es ser consistente.

## Regla 6. Los atributos deben ir entre comillas

Los atributos siempre se escriben siguiendo la estructura:

```xml
nombre="valor"
```

✅ Correcto

```xml
<libro idioma="es">
```

```xml
<libro idioma='es'>
```

❌ Incorrecto

```xml
<libro idioma="es'>
```

```xml
<libro idioma=es>
```

Las comillas de apertura y cierre deben coincidir.

## Regla 7. Uso correcto de caracteres especiales

Algunos caracteres están reservados por XML y no pueden utilizarse directamente dentro del contenido.

| Carácter | Entidad |
| --- | --- |
| `<` | `&lt;` |
| `>` | `&gt;` |
| `&` | `&amp;` |
| `"` | `&quot;` |
| `'` | `&apos;` |

✅ Correcto

```xml
<mensaje>5 &lt; 10</mensaje>
```

❌ Incorrecto

```xml
<mensaje>5 < 10</mensaje>
```

## Comprueba lo aprendido

Indica si los siguientes documentos están bien formados.

### Documento A

```xml
<agenda>
    <contacto>
        <nombre>Ana</nombre>
    </contacto>
</agenda>
```

### Documento B

```xml
<agenda>
    <contacto>
        <nombre>Ana</nombre>
</agenda>
```

### Documento C

```xml
<Agenda>
</agenda>
```

### Documento D

```xml
<libro idioma=es>
</libro>
```

Para cada documento incorrecto:

1. Identifica la regla incumplida.
2. Explica el error.
3. Escribe una versión corregida.

## Errores más comunes

| Error | Ejemplo |
| --- | --- |
| Falta una etiqueta de cierre | `<nombre>Juan` |
| Dos elementos raíz | `<nombre>Juan</nombre><edad>18</edad>` |
| Etiquetas mal anidadas | `<p><strong>Texto</p></strong>` |
| Atributo sin comillas | `<libro idioma=es>` |
| Diferencia entre mayúsculas y minúsculas | `<Libro></libro>` |

## Resumen

- Todo documento XML debe tener un único elemento raíz.
- Todas las etiquetas deben cerrarse.
- El anidamiento debe ser correcto.
- XML distingue mayúsculas y minúsculas.
- Los nombres deben seguir las normas de XML.
- Los atributos deben escribirse entre comillas.
- Los caracteres especiales deben sustituirse por entidades.

!!! success "Objetivo alcanzado"
    Si entiendes y aplicas estas reglas, ya eres capaz de crear documentos XML bien formados y detectar la mayoría de errores sintácticos habituales.
