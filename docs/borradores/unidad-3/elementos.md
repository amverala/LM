# 4. Declaración de elementos

Los elementos constituyen la base de cualquier documento XML.

Una DTD debe indicar qué elementos pueden aparecer y cómo se relacionan entre sí.

Para ello utilizamos la declaración `<!ELEMENT>`.

---

## 4.1 La instrucción `<!ELEMENT>`

La sintaxis general es:

```xml
<!ELEMENT nombre_elemento tipo_contenido>
```

Por ejemplo:

```xml
<!ELEMENT nombre (#PCDATA)>
```

Esta declaración indica que existe un elemento llamado `nombre` cuyo contenido será texto.

!!! note "Idea clave"

    Cada elemento utilizado en un documento XML debe estar declarado en la DTD.

---

## 4.2 Elementos que contienen texto

Cuando un elemento almacena únicamente texto se utiliza:

```xml
#PCDATA
```

Las siglas significan **Parsed Character Data**.

### Ejemplos

```xml
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT apellido (#PCDATA)>
<!ELEMENT email (#PCDATA)>
```

Documento XML válido:

```xml
<nombre>Ana</nombre>
<apellido>García</apellido>
<email>ana@email.com</email>
```

!!! success "Muy habitual"

    La mayoría de los datos simples de un XML suelen declararse mediante `#PCDATA`.

---

## 4.3 Elementos contenedores

Un elemento también puede contener otros elementos hijos.

### Secuencia

Los elementos deben aparecer exactamente en el orden indicado.

DTD:

```xml
<!ELEMENT persona (nombre,apellido)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT apellido (#PCDATA)>
```

XML válido:

```xml
<persona>
    <nombre>Ana</nombre>
    <apellido>García</apellido>
</persona>
```

XML inválido:

```xml
<persona>
    <apellido>García</apellido>
    <nombre>Ana</nombre>
</persona>
```

!!! warning "Importante"

    La coma (`,`) indica una secuencia obligatoria.

### Alternativa

La barra vertical (`|`) indica que solo puede aparecer una opción.

DTD:

```xml
<!ELEMENT situacion (estudiante|trabajador)>
<!ELEMENT estudiante (#PCDATA)>
<!ELEMENT trabajador (#PCDATA)>
```

XML válido:

```xml
<situacion>
    <estudiante>Universitat Jaume I</estudiante>
</situacion>
```

XML válido:

```xml
<situacion>
    <trabajador>Empresa Tecnológica S.L.</trabajador>
</situacion>
```

XML inválido:

```xml
<situacion>
    <estudiante>Universitat Jaume I</estudiante>
    <trabajador>Empresa Tecnológica S.L.</trabajador>
</situacion>
```

---

## 4.4 Cardinalidades

Las cardinalidades indican cuántas veces puede aparecer un elemento.

### Aparición única

```xml
<!ELEMENT persona (nombre)>
```

El elemento debe aparecer exactamente una vez.

### Opcional (`?`)

```xml
<!ELEMENT persona (nombre,apellido2?)>
```

El segundo apellido puede aparecer una vez o no aparecer.

### Cero o más (`*`)

```xml
<!ELEMENT contacto (telefono*)>
```

Puede no existir ningún teléfono o existir varios.

### Uno o más (`+`)

```xml
<!ELEMENT clase (alumno+)>
```

Debe existir al menos un alumno.

### Resumen

| Símbolo | Significado |
|----------|------------|
| ? | 0 o 1 vez |
| * | 0 o más veces |
| + | 1 o más veces |
| nada | exactamente 1 vez |

### Ejemplo completo

```xml
<!ELEMENT agenda (contacto+)>
<!ELEMENT contacto (nombre,telefono*,email?)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT telefono (#PCDATA)>
<!ELEMENT email (#PCDATA)>
```

Interpretación:

- Debe existir al menos un contacto.
- Cada contacto debe tener un nombre.
- Puede tener varios teléfonos.
- Puede tener un correo electrónico.

---

## 4.5 Elementos vacíos

Algunos elementos no contienen información.

Se definen mediante la palabra clave:

```xml
EMPTY
```

Ejemplo:

```xml
<!ELEMENT br EMPTY>
```

XML válido:

```xml
<br/>
```

!!! note "Uso habitual"

    Los elementos vacíos suelen utilizarse como marcadores o elementos auxiliares.

---

## 4.6 Contenido mixto

Un elemento puede contener texto y otros elementos simultáneamente.

DTD:

```xml
<!ELEMENT parrafo (#PCDATA|strong|em)*>
<!ELEMENT strong (#PCDATA)>
<!ELEMENT em (#PCDATA)>
```

XML válido:

```xml
<parrafo>
    Este texto tiene
    <strong>contenido destacado</strong>
    y también
    <em>contenido enfatizado</em>
</parrafo>
```

### Reglas

- Debe comenzar con `#PCDATA`.
- El resto de elementos se separan con `|`.
- La declaración termina con `*`.

!!! warning "Limitación"

    El contenido mixto permite combinar texto y elementos, pero ofrece poco control sobre el orden y la cantidad de elementos.

---

## Actividad guiada

!!! question "Diseña una DTD"

    Diseña las declaraciones necesarias para representar un libro con:

    - título
    - autor
    - ISBN

    Todos los elementos deben contener texto.

??? success "Solución"

    ```xml
    <!ELEMENT libro (titulo,autor,isbn)>
    <!ELEMENT titulo (#PCDATA)>
    <!ELEMENT autor (#PCDATA)>
    <!ELEMENT isbn (#PCDATA)>
    ```

---

## Errores frecuentes

!!! danger "Secuencia y alternativa"

    No es lo mismo:

    ```xml
    <!ELEMENT persona (nombre,apellido)>
    ```

    que:

    ```xml
    <!ELEMENT persona (nombre|apellido)>
    ```

    En el primer caso deben aparecer ambos elementos.

    En el segundo únicamente uno de ellos.

!!! danger "Confundir * y +"

    ```xml
    telefono*
    ```

    permite que no exista ningún teléfono.

    Mientras que:

    ```xml
    telefono+
    ```

    obliga a que exista al menos uno.

---

!!! tip "Al terminar este apartado"

    Deberías ser capaz de declarar elementos con texto, contenedores, cardinalidades, elementos vacíos y contenido mixto utilizando la instrucción `<!ELEMENT>`.
