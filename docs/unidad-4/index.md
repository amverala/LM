# Unidad 4 · Documentos XML - XSD

## Validación avanzada de documentos XML

En la unidad anterior aprendiste a validar documentos XML utilizando DTD, definiendo elementos, atributos y restricciones que permitían comprobar automáticamente si un documento cumplía una estructura determinada.

Sin embargo, DTD presenta ciertas limitaciones cuando se trabaja con aplicaciones reales. En muchos casos es necesario validar tipos de datos, establecer restricciones más precisas o definir relaciones entre distintos elementos de un documento XML.

En esta unidad aprenderás a validar documentos XML utilizando XSD (*XML Schema Definition*), el estándar recomendado por el W3C para la definición de esquemas XML.

**Duración estimada: 9 horas**

[Abrir la unidad](introduccion.md){ .md-button .md-button--primary }
[Ir a la actividad entregable](actividad_entregable.md){ .md-button }

---

## Recorrido del tema

| Apartado | Qué aprenderás |
|-----------|-----------|
| [Introducción a XML Schema](introduccion.md) | Comprender las limitaciones de DTD y las ventajas que aporta XML Schema para la validación de documentos XML. |
| [Espacios de nombres](namespaces.md) | Utilizar namespaces para evitar colisiones de nombres en documentos XML complejos. |
| [Estructura de un esquema XSD](xsd-estructura.md) | Conocer la organización básica de un esquema XML Schema y sus elementos principales. |
| [Asociación entre XML y XSD](enlace-xml-xsd.md) | Vincular correctamente un documento XML con el esquema encargado de su validación. |
| [Namespaces y validación](namespaces-validacion.md) | Comprender el papel de los espacios de nombres durante los procesos de validación XML. |
| [Definición de elementos](elementos.md) | Declarar elementos simples y complejos dentro de un esquema XSD. |
| [Cardinalidad](cardinalidad.md) | Controlar el número mínimo y máximo de apariciones de los elementos utilizando `minOccurs` y `maxOccurs`. |
| [Declaración de atributos](atributos.md) | Definir atributos obligatorios, opcionales y con valores por defecto. |
| [Restricciones de datos](restricciones.md) | Aplicar restricciones mediante enumeraciones, patrones, rangos y otros mecanismos de validación. |
| [Reutilización de tipos](reutilizacion.md) | Crear tipos personalizados reutilizables para construir esquemas más modulares y mantenibles. |
| [Documentación de esquemas](documentacion.md) | Incorporar anotaciones y documentación dentro de los esquemas XML. |
| [Claves y referencias](key-keyref.md) | Garantizar la integridad de los datos mediante claves únicas y referencias entre elementos. |
| [Ejercicios voluntarios](ejercicios_voluntarios.md) | Reforzar los contenidos de la unidad mediante actividades adicionales de práctica. |
| [Actividad entregable](actividad_entregable.md) | Aplicar los conocimientos adquiridos mediante una práctica evaluable. |

---

## Secuencia recomendada

!!! note "Itinerario de aprendizaje"
    Introducción → Namespaces → Estructura XSD → Asociación XML-XSD → Validación con namespaces → Elementos → Cardinalidad → Atributos → Restricciones → Reutilización → Documentación → Claves y referencias → Actividades

---

## Al finalizar la unidad

!!! tip "Objetivo alcanzado"
    Deberías ser capaz de diseñar esquemas XML Schema completos, asociarlos correctamente a documentos XML, definir tipos de datos y restricciones avanzadas, documentar esquemas y validar automáticamente documentos XML utilizando herramientas compatibles con el estándar XSD.

!!! info "Antes de continuar"
    Asegúrate de comprender la diferencia entre DTD y XSD, así como el uso de namespaces, ya que estos conceptos serán fundamentales para trabajar posteriormente con XPath y XSLT.
