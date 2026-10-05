# 9. Actividades entregables

En las siguientes actividades pondrás en práctica los conceptos trabajados a lo largo de la unidad.

Todas las actividades deberán entregarse junto con los ficheros XML y DTD correspondientes y deberán validarse correctamente.

!!! info "Antes de entregar"

    Comprueba siempre que:

    - El XML está bien formado.
    - La DTD no contiene errores sintácticos.
    - El documento XML es válido según la DTD.

---

## Actividad 1. Sistema de fichajes

### Nivel

🟢 Básico

### Objetivo

Diseñar un documento XML para registrar las entradas y salidas de los empleados de una empresa.

### Requisitos

Debe existir un elemento raíz:

```xml
<registro_fichajes>
```

Cada fichaje:

```xml
<fichaje>
```

debe contener:

- empleado
- fecha
- hora

Además:

- El atributo `tipo` será obligatorio.
- Solo podrá tomar los valores `entrada` o `salida`.

### Entregable

- Archivo `fichajes.xml`.
- DTD interna.
- Documento válido.

---

## Actividad 2. Catálogo de productos electrónicos

### Nivel

🟡 Intermedio

### Objetivo

Crear una DTD externa para validar un catálogo de productos.

### Requisitos

Elemento raíz:

```xml
<catalogo>
```

Cada producto deberá contener:

```xml
<nombre>
<marca>
<categoria>
<precio>
<descripcion>
```

Restricciones:

- `descripcion` será opcional.
- Cada producto tendrá un atributo `id` único.
- El atributo `en_oferta` será opcional.
- El elemento `precio` tendrá un atributo `moneda` con valor por defecto `EUR`.

### Entregable

- Archivo `catalogo.xml`.
- Archivo `catalogo.dtd`.
- Mínimo tres productos.
- Documento válido.

---

## Actividad 3. Congreso tecnológico

### Nivel

🔴 Avanzado

### Objetivo

Diseñar una estructura XML completa aplicando los conceptos más importantes de la unidad.

### Requisitos

#### Ponentes

```xml
<ponente>
```

con un atributo:

```xml
id_ponente
```

de tipo `ID`.

#### Charlas

```xml
<charla>
```

con un atributo:

```xml
id_ponente_ref
```

de tipo `IDREF`.

Este atributo deberá apuntar a uno de los ponentes registrados.

#### Entidad

Definir una entidad:

```xml
<!ENTITY nombre_congreso "Congreso Anual de Tecnología Abierta">
```

y utilizarla dentro del documento.

### Condiciones mínimas

- 2 ponentes.
- 3 charlas.
- Relaciones ID/IDREF correctas.
- Documento válido.

### Entregable

- `congreso.xml`.
- `congreso.dtd`.

---
