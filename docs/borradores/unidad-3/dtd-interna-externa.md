# 3. DTD internas y externas

Una vez definida una DTD, debemos indicar al documento XML dónde puede encontrar las reglas necesarias para realizar la validación.

Para ello utilizamos la declaración **DOCTYPE**, que aparece en el prólogo del documento XML.

---

## 3.1 Asociación de una DTD a un documento XML

Cuando un analizador XML encuentra una declaración DTD, realiza los siguientes pasos:

1. Lee el documento XML.
2. Localiza la DTD asociada.
3. Carga las reglas de validación.
4. Comprueba que el documento cumple dichas reglas.

!!! note "Recuerda"

    La validación siempre se realiza después de comprobar que el documento está bien formado.

---

## 3.2 La declaración DOCTYPE

La asociación entre un documento XML y su DTD se realiza mediante la declaración `DOCTYPE`.

Su sintaxis general es:

```xml
<!DOCTYPE elemento_raiz ... >
```

El nombre indicado debe coincidir con el elemento raíz del documento XML.

Por ejemplo:

```xml
<nota>
    ...
</nota>
```

utilizaría:

```xml
<!DOCTYPE nota>
```

---

## 3.3 DTD interna

En una DTD interna las reglas de validación se escriben dentro del propio documento XML.

Se utiliza principalmente para:

- Aprender a crear DTD.
- Realizar pruebas rápidas.
- Documentos sencillos.

### Ejemplo

```xml
<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE nota [

    <!ELEMENT nota (destinatario,remitente,cabecera,cuerpo)>

    <!ELEMENT destinatario (#PCDATA)>

    <!ELEMENT remitente (#PCDATA)>

    <!ELEMENT cabecera (#PCDATA)>

    <!ELEMENT cuerpo (#PCDATA)>

]>

<nota>

    <destinatario>Tove</destinatario>

    <remitente>Jani</remitente>

    <cabecera>Recordatorio</cabecera>

    <cuerpo>Llámame</cuerpo>

</nota>
```

!!! success "Ventaja"

    Todo el contenido necesario para validar el documento se encuentra en un único archivo.

---

## 3.4 DTD externa

En una DTD externa las reglas se almacenan en un fichero independiente con extensión `.dtd`.

Esta es la opción más habitual en proyectos reales.

### Archivo XML

```xml
<?xml version="1.0" encoding="UTF-8"?>

<!DOCTYPE nota SYSTEM "nota.dtd">

<nota>

    <destinatario>Tove</destinatario>

    <remitente>Jani</remitente>

    <cabecera>Recordatorio</cabecera>

    <cuerpo>Llámame</cuerpo>

</nota>
```

### Archivo nota.dtd

```xml
<!ELEMENT nota (destinatario,remitente,cabecera,cuerpo)>

<!ELEMENT destinatario (#PCDATA)>

<!ELEMENT remitente (#PCDATA)>

<!ELEMENT cabecera (#PCDATA)>

<!ELEMENT cuerpo (#PCDATA)>
```

!!! success "Ventaja"

    La misma DTD puede reutilizarse para validar muchos documentos XML diferentes.

---

## 3.5 Utilización de SYSTEM

La palabra clave `SYSTEM` indica que la DTD se encuentra en una ubicación concreta.

```xml
<!DOCTYPE nota SYSTEM "nota.dtd">
```

También podría especificarse una ruta:

```xml
<!DOCTYPE nota SYSTEM "dtd/nota.dtd">
```

### Cuándo utilizar SYSTEM

- Aplicaciones propias.
- Proyectos educativos.
- Estructuras XML privadas.
- DTD almacenadas localmente.

---

## 3.6 Utilización de PUBLIC

La palabra clave `PUBLIC` se utiliza cuando la DTD corresponde a un estándar conocido públicamente.

Ejemplo:

```xml
<!DOCTYPE html PUBLIC
"-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
```

!!! info "Curiosidad"

    Las DTD públicas fueron muy utilizadas en las primeras versiones de XHTML definidas por el W3C.

---

## 3.7 ¿DTD interna o externa?

| Característica | Interna | Externa |
|---------------|----------|---------|
| Archivo único | ✅ | ❌ |
| Reutilizable | ❌ | ✅ |
| Fácil para aprender | ✅ | ✅ |
| Uso profesional | ⚠️ | ✅ |
| Mantenimiento | ⚠️ | ✅ |

!!! tip "Buenas prácticas"

    Durante el diseño de una estructura XML suele resultar cómodo comenzar con una DTD interna.

    Una vez comprobado que funciona correctamente, es recomendable trasladarla a un fichero externo.

---

## Actividad práctica

!!! question "Transforma una DTD"

    Observa el siguiente documento XML con DTD interna:

    ```xml
    <!DOCTYPE agenda [

        <!ELEMENT agenda (contacto+)>

        <!ELEMENT contacto (nombre)>

        <!ELEMENT nombre (#PCDATA)>

    ]>
    ```

    Convierte esta definición en una DTD externa llamada `agenda.dtd`.

??? tip "Pista"

    Copia todas las declaraciones `<!ELEMENT>` en un archivo independiente y sustituye la definición interna por una referencia mediante `SYSTEM`.

---

!!! tip "Al terminar este apartado"

    Deberías ser capaz de asociar una DTD a un documento XML, distinguir entre definiciones internas y externas y utilizar correctamente las opciones SYSTEM y PUBLIC.
