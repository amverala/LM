# 8. Práctica guiada: construyendo una DTD paso a paso

Hasta ahora hemos estudiado la teoría de las DTD:

- Declaración de elementos.
- Declaración de atributos.
- Entidades.
- Validación.

En esta práctica construiremos una DTD completa siguiendo un procedimiento similar al utilizado en proyectos reales.

---

## Objetivo

Crear un documento XML para gestionar una agenda de contactos y validarlo utilizando una DTD.

Al finalizar serás capaz de:

- Diseñar una estructura XML.
- Crear una DTD interna.
- Comprobar la validez del documento.
- Convertir la DTD en una definición externa reutilizable.

---

## Paso 1. Crear un XML bien formado

```xml
<?xml version="1.0" encoding="UTF-8"?>

<agenda>
    <contacto>
        <nombre>Ana García</nombre>
        <telefono>600123123</telefono>
        <email>ana@email.com</email>
    </contacto>
</agenda>
```

!!! success "Primer objetivo"

    Ya tenemos un documento XML bien formado.

---

## Paso 2. Diseñar la estructura

```text
agenda
└── contacto
    ├── nombre
    ├── telefono
    └── email
```

---

## Paso 3. Crear una DTD interna

```xml
<!DOCTYPE agenda [

    <!ELEMENT agenda (contacto+)>

    <!ELEMENT contacto (nombre,telefono,email)>

    <!ELEMENT nombre (#PCDATA)>

    <!ELEMENT telefono (#PCDATA)>

    <!ELEMENT email (#PCDATA)>

]>
```

Documento completo:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE agenda [
    <!ELEMENT agenda (contacto+)>
    <!ELEMENT contacto (nombre,telefono,email)>
    <!ELEMENT nombre (#PCDATA)>
    <!ELEMENT telefono (#PCDATA)>
    <!ELEMENT email (#PCDATA)>
]>
<agenda>
    <contacto>
        <nombre>Ana García</nombre>
        <telefono>600123123</telefono>
        <email>ana@email.com</email>
    </contacto>
</agenda>
```

---

## Paso 4. Validar el documento

Si el documento cumple las reglas XML y las reglas de la DTD, será:

- ✅ Bien formado.
- ✅ Válido.

---

## Paso 5. Probar la validación

Modifica el XML:

```xml
<contacto>
    <nombre>Ana García</nombre>
</contacto>
```

La DTD sigue exigiendo:

```xml
<!ELEMENT contacto (nombre,telefono,email)>
```

Por tanto:

- Falta `telefono`.
- Falta `email`.

El documento sigue estando bien formado, pero ya no es válido.

!!! warning "Conclusión"

    La validación detecta errores estructurales que XML por sí solo no puede detectar.

---

## Paso 6. Añadir cardinalidades

Queremos que:

- `nombre` sea obligatorio.
- `telefono` sea obligatorio.
- `email` sea opcional.

Modificamos la DTD:

```xml
<!ELEMENT contacto (nombre,telefono,email?)>
```

Ahora será válido:

```xml
<contacto>
    <nombre>Carlos López</nombre>
    <telefono>611222333</telefono>
</contacto>
```

---

## Paso 7. Añadir múltiples contactos

La expresión:

```xml
<!ELEMENT agenda (contacto+)>
```

indica que debe existir al menos un contacto.

```xml
<agenda>
    <contacto>
        <nombre>Ana García</nombre>
        <telefono>600123123</telefono>
        <email>ana@email.com</email>
    </contacto>

    <contacto>
        <nombre>Carlos López</nombre>
        <telefono>611222333</telefono>
    </contacto>
</agenda>
```

---

## Paso 8. Convertir la DTD en externa

### Archivo agenda.dtd

```xml
<!ELEMENT agenda (contacto+)>
<!ELEMENT contacto (nombre,telefono,email?)>
<!ELEMENT nombre (#PCDATA)>
<!ELEMENT telefono (#PCDATA)>
<!ELEMENT email (#PCDATA)>
```

### Archivo agenda.xml

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE agenda SYSTEM "agenda.dtd">
<agenda>
    <contacto>
        <nombre>Ana García</nombre>
        <telefono>600123123</telefono>
        <email>ana@email.com</email>
    </contacto>
</agenda>
```

!!! success "Resultado"

    La DTD ya puede reutilizarse en distintos documentos XML.

---

## Actividad de ampliación

!!! question "Añade atributos"

    Modifica la DTD para que cada contacto tenga:

    - Un atributo `id` obligatorio.
    - Un atributo `tipo` con los valores `personal` o `profesional`.

??? tip "Sugerencia"

    Utiliza `<!ATTLIST>`, `ID` y un atributo enumerado.

---

## Checklist final

- [ ] Crear un XML bien formado.
- [ ] Diseñar una DTD.
- [ ] Declarar elementos con `<!ELEMENT>`.
- [ ] Utilizar cardinalidades.
- [ ] Validar documentos XML.
- [ ] Detectar errores de validación.
- [ ] Crear una DTD externa.

---

!!! tip "Al terminar esta práctica"

    Deberías ser capaz de construir una DTD sencilla desde cero y utilizarla para validar documentos XML reales.
