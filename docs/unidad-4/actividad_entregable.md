???+ danger "Actividad entregable · Validación de un registro VERIFACTU"

    ## Contexto

    En esta actividad actuarás como desarrollador junior de una empresa de software.

    La aplicación de facturación de la empresa ha generado un documento XML que debe enviarse a la Agencia Tributaria siguiendo el sistema VERIFACTU.

    Sin embargo, el documento contiene errores y está siendo rechazado durante el proceso de validación.

    Tu misión consiste en analizar el XML, interpretar los mensajes de error y corregir todos los problemas hasta conseguir un documento completamente válido.

    !!! info "Situación profesional"

        Este tipo de tareas es muy habitual en entornos reales donde los sistemas intercambian información mediante esquemas XML validados automáticamente.

    ## Objetivos de aprendizaje

    Mediante esta actividad pondrás en práctica:

    - Espacios de nombres.
    - XML Schema.
    - Validación XML.
    - Restricciones de datos.
    - Estructuras complejas.
    - Interpretación de errores.
    - Localización y corrección de incidencias.

    ## Material proporcionado

    El profesor facilitará los siguientes recursos:

    ```text
    SuministroLR.xsd
    SuministroInformacion.xsd
    factura_con_errores.xml
    ```

    Todos los archivos deberán estar ubicados en la misma carpeta de trabajo.

    ## Preparación del entorno

    ### 1. Crear la carpeta de trabajo

    Crea una carpeta denominada:

    ```text
    verifactu
    ```

    ### 2. Copiar los ficheros

    Guarda en ella:

    ```text
    SuministroLR.xsd
    SuministroInformacion.xsd
    factura_con_errores.xml
    ```

    ### 3. Abrir Visual Studio Code

    Abre la carpeta completa mediante:

    ```text
    Archivo → Abrir carpeta
    ```

    ## Desarrollo de la actividad

    ### Paso 1 · Abrir el XML

    Abre:

    ```text
    factura_con_errores.xml
    ```

    Observa los errores detectados por el validador.

    ### Paso 2 · Analizar el error

    Para cada error:

    1. Lee atentamente el mensaje.
    2. Localiza la línea indicada.
    3. Identifica el elemento problemático.
    4. Consulta el XSD correspondiente.
    5. Comprende la regla que se está incumpliendo.

    ### Paso 3 · Corregir

    Modifica:

    ```text
    factura_con_errores.xml
    ```

    hasta eliminar el error detectado.

    ### Paso 4 · Volver a validar

    Guarda el fichero.

    Visual Studio Code volverá a ejecutar la validación automáticamente.

    Si la corrección es correcta aparecerá el siguiente error.

    Repite el proceso hasta que:

    ```text
    No queden errores de validación.
    ```

    ## Estrategia recomendada

    Sigue siempre este orden:

    ```text
    Leer error
    ↓
    Localizar línea
    ↓
    Consultar XSD
    ↓
    Corregir XML
    ↓
    Validar de nuevo
    ```

    ```mermaid
    flowchart TD

    A[Error detectado]

    A --> B[Localizar línea]

    B --> C[Consultar XSD]

    C --> D[Corregir XML]

    D --> E[Validación]

    E -->|Error| A

    E -->|Correcto| F[Documento válido]
    ```

    !!! warning "Entrega obligatoria"

        Debes entregar:

        - factura_con_errores.xml corregido.
        - Documento explicativo.

    ## Evidencias a entregar

    Entrega un archivo comprimido que contenga:

    ```text
    factura_con_errores.xml
    ```

    completamente corregido.

    Además incluye:

    ### Documento breve

    Explicando:

    - Qué errores encontraste.
    - Cómo los identificaste.
    - Qué cambios realizaste.
    - Qué herramientas utilizaste.

        ## Actividad de ampliación

    !!! question "Investigación"

        Busca información sobre VERIFACTU y explica brevemente:

        - Qué objetivo tiene.
        - Qué organismos participan.
        - Por qué se utilizan esquemas XML para intercambiar información fiscal.

    !!! tip "Al finalizar"

        Si consigues completar esta actividad habrás trabajado con un caso muy similar a los que aparecen en proyectos reales de intercambio de información empresarial y administrativa mediante XML y XML Schema.