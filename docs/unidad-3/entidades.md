# 6. Declaración de entidades

Las DTD no solo permiten definir elementos y atributos.

También permiten crear **entidades**, es decir, nombres que actúan como sustitutos de información.

Las entidades son muy útiles para reutilizar contenido y evitar repeticiones.

---

## 6.1 ¿Qué es una entidad?

Una entidad funciona como un alias.

En lugar de escribir siempre el mismo texto, podemos definirlo una única vez y reutilizarlo tantas veces como sea necesario.

DTD:

```xml
<!ENTITY empresa "Mi Empresa S.L.">
```

Uso en XML:

```xml
<autor>&empresa;</autor>
```

Resultado tras procesar la entidad:

```xml
<autor>Mi Empresa S.L.</autor>
```

!!! note "Idea clave"

    El procesador XML sustituye automáticamente la entidad por el valor que representa.

---

## 6.2 Entidades internas

Son aquellas cuyo contenido se define directamente dentro de la DTD.

### Sintaxis

```xml
<!ENTITY nombre "valor">
```

### Ejemplo

DTD:

```xml
<!ENTITY empresa "Lenguajes de Marcas S.L.">
<!ENTITY anio "2026">
```

XML:

```xml
<footer>
    Copyright &empresa; - &anio;
</footer>
```

Resultado:

```xml
<footer>
    Copyright Lenguajes de Marcas S.L. - 2026
</footer>
```

---

## 6.3 Ventajas de utilizar entidades

Las entidades permiten:

- Evitar duplicar información.
- Facilitar el mantenimiento de documentos.
- Reducir errores de escritura.
- Centralizar datos reutilizados con frecuencia.

### Ejemplo práctico

Sin entidad:

```xml
<autor>Universitat Jaume I</autor>
<editor>Universitat Jaume I</editor>
<centro>Universitat Jaume I</centro>
```

Con entidad:

```xml
<!ENTITY universidad "Universitat Jaume I">
```

```xml
<autor>&universidad;</autor>
<editor>&universidad;</editor>
<centro>&universidad;</centro>
```

---

## 6.4 Entidades externas

Una entidad también puede obtener su contenido desde un recurso externo.

DTD:

```xml
<!ENTITY aviso SYSTEM "aviso.txt">
```

Uso en XML:

```xml
<mensaje>&aviso;</mensaje>
```

Durante el procesamiento, el contenido de `aviso.txt` sustituirá a la entidad.

!!! info "Uso menos frecuente"

    En entornos educativos se utilizan principalmente entidades internas.

    Las entidades externas suelen emplearse cuando se necesita reutilizar información extensa o compartida entre varios documentos.

---

## 6.5 Entidades predefinidas y caracteres especiales

XML incorpora varias entidades predefinidas para representar caracteres reservados.

| Entidad | Carácter representado |
|----------|----------|
| `&lt;` | `<` |
| `&gt;` | `>` |
| `&amp;` | `&` |
| `&quot;` | `"` |
| `&apos;` | `'` |

### Ejemplo

XML:

```xml
<texto>5 &lt; 10</texto>
```

Resultado mostrado:

```text
5 < 10
```

!!! warning "Importante"

    Los caracteres `<` y `&` tienen un significado especial en XML y no deben escribirse directamente cuando forman parte del contenido textual.

---

## 6.6 Resumen de tipos de entidades

!!! abstract "Esquema de estudio"

| Tipo | Ubicación | Uso principal |
|--------|--------|--------|
| Entidad interna | Dentro de la DTD | Reutilizar texto |
| Entidad externa | Recurso externo | Compartir contenido |
| Entidad predefinida | XML | Representar caracteres especiales |

---

## Actividad guiada

!!! question "Definir entidades"

    Crea una DTD que defina:

    - Una entidad `centro`.
    - Una entidad `curso`.

    Después utilízalas para mostrar el texto:

    ```text
    IES Ejemplo - 1º DAW
    ```

??? success "Solución"

    ```xml
    <!ENTITY centro "IES Ejemplo">
    <!ENTITY curso "1º DAW">
    ```

    ```xml
    <datos>&centro; - &curso;</datos>
    ```

---

## Errores frecuentes

!!! danger "Olvidar el punto y coma"

    Incorrecto:

    ```xml
    &empresa
    ```

    Correcto:

    ```xml
    &empresa;
    ```

!!! danger "Usar una entidad no declarada"

    Toda entidad personalizada debe declararse previamente en la DTD.

---

!!! tip "Al terminar este apartado"

    Deberías ser capaz de definir entidades internas y externas, utilizar entidades predefinidas y comprender cómo XML sustituye automáticamente su contenido.
