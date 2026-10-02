# 7. Comprobación y validación

Una vez creada una DTD y asociado un documento XML a ella, necesitamos comprobar si el documento cumple todas las reglas definidas.

Este proceso se denomina **validación**.

---

## 7.1 ¿Qué significa validar?

Validar consiste en comparar un documento XML con una DTD para comprobar que:

- Todos los elementos están correctamente declarados.
- Los elementos aparecen en el orden esperado.
- Se respetan las cardinalidades.
- Los atributos cumplen sus restricciones.
- Las entidades están correctamente definidas.

!!! note "Recuerda"

    Un documento XML válido siempre debe estar bien formado.

    Sin embargo, un documento bien formado no tiene por qué ser válido.

---

## 7.2 Posibles resultados de una validación

### Documento bien formado y válido

XML:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE libro SYSTEM "libro.dtd">
<libro>
    <titulo>XML desde cero</titulo>
    <autor>Ana García</autor>
</libro>
```

DTD:

```xml
<!ELEMENT libro (titulo,autor)>
<!ELEMENT titulo (#PCDATA)>
<!ELEMENT autor (#PCDATA)>
```

Resultado:

```text
✓ Documento válido
```

### Documento bien formado pero inválido

```xml
<libro>
    <titulo>XML desde cero</titulo>
</libro>
```

Resultado:

```text
✗ Falta el elemento autor
```

### Documento mal formado

```xml
<libro>
    <titulo>XML desde cero</titulo>
```

Resultado:

```text
✗ Error de sintaxis XML: falta la etiqueta </libro>
```

---

## 7.3 Validación mediante Visual Studio Code

Visual Studio Code permite validar documentos XML mediante extensiones específicas.

### Extensión recomendada

**XML Language Support by Red Hat**

Características:

- Detección automática de errores XML.
- Validación de DTD.
- Resaltado de sintaxis.
- Navegación entre elementos.

!!! tip "Consejo"

    Corrige primero los errores de buena formación y después los errores de validación.

---

## 7.4 Validación con navegadores web

Los navegadores modernos pueden detectar errores de sintaxis XML.

- Firefox
- Chrome
- Edge

!!! warning "Limitación"

    Los navegadores no siempre realizan una validación completa frente a la DTD.

---

## 7.5 Validadores online

Proceso habitual:

1. Copiar el XML.
2. Copiar la DTD o subir los archivos.
3. Ejecutar la validación.
4. Revisar los errores obtenidos.

---

## 7.6 Interpretar mensajes de error

Ejemplo:

```text
Element "autor" is required but missing
```

Interpretación:

- La DTD exige un elemento `autor`.
- El documento XML no lo contiene.

Otro ejemplo:

```text
Attribute "id" must be unique
```

Interpretación:

- Existen dos atributos de tipo `ID` con el mismo valor.

---

## 7.7 Estrategia recomendada para validar

1. Crear un XML bien formado.
2. Asociar la DTD.
3. Validar el documento.
4. Corregir los errores encontrados.
5. Repetir la validación.

```text
XML → Comprobar sintaxis → Asociar DTD → Validar → Corregir
```

!!! success "Método recomendado"

    Valida frecuentemente mientras construyes el documento.

---

## Actividad guiada

!!! question "Detectar errores"

    Observa el siguiente XML:

    ```xml
    <persona>
        <nombre>Ana</nombre>
    </persona>
    ```

    y la siguiente DTD:

    ```xml
    <!ELEMENT persona (nombre,apellido)>
    <!ELEMENT nombre (#PCDATA)>
    <!ELEMENT apellido (#PCDATA)>
    ```

    ¿Está bien formado?

    ¿Es válido?

??? success "Solución"

    Está bien formado porque cumple las reglas sintácticas de XML.

    No es válido porque falta el elemento `apellido`.

---

## Errores frecuentes

!!! danger "Confundir bien formado con válido"

    Un documento XML puede ser correcto sintácticamente y seguir siendo inválido.

!!! danger "No validar después de cada cambio"

    Un pequeño cambio puede romper la estructura definida por la DTD.

!!! danger "Ignorar los mensajes de error"

    Los mensajes suelen indicar qué regla se ha incumplido.

---

!!! tip "Al terminar este apartado"

    Deberías ser capaz de validar documentos XML, interpretar los errores detectados y utilizar herramientas para comprobar su validez.
