# 5. Declaración de atributos

Hasta ahora hemos definido elementos y sus relaciones mediante la instrucción `<!ELEMENT>`.

Sin embargo, en muchos casos necesitamos almacenar información adicional asociada a un elemento.

Para ello utilizamos los atributos.

---

## 5.1 ¿Qué es un atributo?

Un atributo proporciona información adicional sobre un elemento XML.

```xml
<libro isbn="9788441543020">
    <titulo>XML desde cero</titulo>
</libro>
```

En este ejemplo:

- `libro` es un elemento.
- `isbn` es un atributo.

!!! note "Diferencia importante"

    Los elementos representan la información principal.

    Los atributos suelen utilizarse para describir características adicionales de un elemento.

---

## 5.2 La instrucción `<!ATTLIST>`

Los atributos se definen mediante la instrucción:

```xml
<!ATTLIST nombre_elemento
          nombre_atributo
          tipo_atributo
          valor>
```

Ejemplo:

```xml
<!ATTLIST libro isbn CDATA #REQUIRED>
```

Esta declaración indica que:

- El atributo pertenece al elemento `libro`.
- Su nombre es `isbn`.
- Su tipo es `CDATA`.
- Es obligatorio (`#REQUIRED`).

---

## 5.3 Tipos de atributos

### **CDATA**

Es el tipo más utilizado. Permite almacenar cualquier cadena de texto.

```xml
<!ATTLIST imagen src CDATA #REQUIRED>
```

```xml
<imagen src="foto.jpg"/>
```

### **Enumerados**

Permiten restringir el valor a una lista concreta de opciones.

```xml
<!ATTLIST producto
          estado (nuevo|usado|reacondicionado)
          "nuevo">
```

Válido:

```xml
<producto estado="usado"/>
```

Inválido:

```xml
<producto estado="roto"/>
```

### **ID**

Define un identificador único dentro del documento XML.

```xml
<!ATTLIST alumno
          id ID
          #REQUIRED>
```

```xml
<alumno id="A001"/>
<alumno id="A002"/>
```

!!! warning "Identificadores únicos"

    No pueden existir dos valores ID iguales dentro del mismo documento.

### **IDREF**

Permite hacer referencia a un identificador definido previamente.

```xml
<!ATTLIST alumno id ID #REQUIRED>
<!ATTLIST matricula alumno_ref IDREF #REQUIRED>
```

```xml
<alumno id="A001"/>
<matricula alumno_ref="A001"/>
```

### **IDREFS**

Permite referenciar varios identificadores.

```xml
<!ATTLIST grupo alumnos IDREFS #REQUIRED>
```

```xml
<grupo alumnos="A001 A002 A003"/>
```

### **NMTOKEN**

Representa una cadena sin espacios.

```xml
<!ATTLIST usuario codigo NMTOKEN #REQUIRED>
```

Válido:

```xml
<usuario codigo="USR_A01"/>
```

Inválido:

```xml
<usuario codigo="USR A01"/>
```

### **NMTOKENS**

Permite una lista de valores NMTOKEN separados por espacios.

```xml
<!ATTLIST usuario permisos NMTOKENS #REQUIRED>
```

```xml
<usuario permisos="lectura escritura administracion"/>
```

---

## Resumen de tipos de atributos

!!! abstract "Esquema de estudio"

| Tipo | Uso principal | Ejemplo |
|--------|--------|--------|
| **CDATA** | Texto libre | `isbn="9788441543020"` |
| **Enumerado** | Lista cerrada de opciones | `estado="nuevo"` |
| **ID** | Identificador único | `id="A001"` |
| **IDREF** | Referencia a un ID | `alumno_ref="A001"` |
| **IDREFS** | Referencias múltiples | `alumnos="A001 A002"` |
| **NMTOKEN** | Código sin espacios | `codigo="USR_A01"` |
| **NMTOKENS** | Lista de códigos | `permisos="lectura escritura"` |

---

## 5.4 Restricciones y valores

### **#REQUIRED**

El atributo es obligatorio.

```xml
<!ATTLIST coche matricula CDATA #REQUIRED>
```

### **#IMPLIED**

El atributo es opcional.

```xml
<!ATTLIST coche color CDATA #IMPLIED>
```

### **#FIXED**

El atributo debe tener siempre el mismo valor.

```xml
<!ATTLIST coche marca CDATA #FIXED "Seat">
```

### **Valor por defecto**

Si el atributo no aparece, el procesador XML utilizará el valor indicado.

```xml
<!ATTLIST coche color CDATA "rojo">
```

---

## 5.5 Declaración conjunta de atributos

```xml
<!ATTLIST libro
          id ID #REQUIRED
          isbn CDATA #REQUIRED
          idioma (es|en|fr|de) #IMPLIED
          estado (nuevo|usado) "nuevo">
```

---

## Actividad guiada

!!! question "Diseña una declaración ATTLIST"

    Define los atributos necesarios para un elemento `pelicula` que cumpla estas condiciones:

    - id obligatorio y único.
    - genero con valores accion, drama o ciencia_ficcion.
    - idioma opcional.

??? success "Solución"

    ```xml
    <!ATTLIST pelicula
              id ID #REQUIRED
              genero (accion|drama|ciencia_ficcion) #REQUIRED
              idioma CDATA #IMPLIED>
    ```

---

## Errores frecuentes

!!! danger "Confundir ID y CDATA"

    Un atributo **CDATA** puede repetirse.

    Un atributo **ID** debe ser único.

!!! danger "Usar espacios en NMTOKEN"

    Los espacios no están permitidos.

---

!!! tip "Al terminar este apartado"

    Deberías ser capaz de definir atributos, restringir sus valores y utilizar identificadores y referencias mediante `<!ATTLIST>`.
