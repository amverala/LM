# 4. Actividades y prácticas

Las siguientes prácticas forman parte del trabajo evaluable de esta unidad.

Antes de entregar cualquier ejercicio, comprueba que tus documentos XML:

- Tienen un único elemento raíz.
- Cierran correctamente todas las etiquetas.
- Utilizan nombres válidos para los elementos.
- Emplean comillas en todos los atributos.
- No contienen errores de anidamiento.

---

## Práctica entregable 1 · Sintaxis XML

### Descripción

Analiza los siguientes fragmentos XML y determina si son correctos o incorrectos.

Para cada caso deberás:

1. Indicar si el fragmento es válido.
2. Explicar qué regla incumple, si existe algún error.
3. Proponer una versión corregida cuando sea necesario.

### Caso A

```xml
<datoAlbaran>Albarán 12634</DatoAlbaran1>
```

### Caso B

```xml
<2nivel>Estamos en el nivel 2</2nivel>
```

### Caso C

```xml
<mapa pos="2">Izquierda</mapa>
```

### Caso D

```xml
<persona><nombre>Vicente Pons</persona></nombre>
```

### Caso E

```xml
<Parrafo>Hola<lin_horizontal></Parrafo>
```

### Caso F

```xml
<salto_de_linea/>
```

### Entrega

Debes entregar un documento PDF que incluya:

1. La resolución de todos los apartados.
2. La explicación de cada error detectado.
3. La versión corregida de los fragmentos incorrectos.

!!! tip "Consejo"
    Utiliza las reglas estudiadas en el apartado **Documentos XML bien formados** para justificar cada respuesta.

---

## Práctica entregable 2 · Librería online

### Descripción

Crea un documento XML bien formado con información de libros relacionados con la temática **XML**.

La información deberá proceder de **al menos dos librerías electrónicas diferentes**.

Cada librería deberá incluir **un mínimo de tres libros**.

### Información requerida

Para cada libro deberás incluir:

- ISBN.
- Título.
- Nivel de profundidad:
    - Básico
    - Intermedio
    - Avanzado
- Autor o autores.
- Editorial.
- Fecha de publicación.
- Página web (si existe).
- Precio.

### Requisitos

- El documento debe estar correctamente formado.
- Debe existir un único elemento raíz.
- Deben utilizarse elementos con nombres significativos.
- Se valorará una estructura clara y coherente.
- No utilices nombres como `libro1`, `libro2`, `libreria1` o `libreria2`.

XML permite repetir elementos siempre que sea necesario.

### Orientaciones

Antes de comenzar:

1. Diseña la estructura general del documento.
2. Define el elemento raíz.
3. Organiza las librerías como elementos independientes.
4. Añade los libros dentro de cada librería.
5. Comprueba el resultado con Firefox.

### Entrega

Debes entregar:

1. Un fichero XML con tu solución.
2. Un documento PDF que incluya:
   - Captura del XML generado.
   - Breve explicación de la estructura utilizada.
   - Captura de la visualización en Firefox.

### Herramientas recomendadas

Puedes utilizar cualquier editor de texto para generar el fichero XML:

- Visual Studio Code.
- Notepad++.
- Gedit.
- Bloc de notas.

### Comprobación final

Antes de entregar:

- Abre el documento con Firefox.
- Verifica que no aparecen errores de sintaxis.
- Comprueba que todas las etiquetas están correctamente cerradas.
- Revisa que existe un único elemento raíz.
- Comprueba que los nombres utilizados son coherentes.

!!! success "Objetivo de la unidad"
    Si completas ambas prácticas con éxito, serás capaz de interpretar, corregir y crear documentos XML bien formados utilizando estructuras de información reales.
