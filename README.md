# Lenguajes de Marcas · Tema 1

Sitio en español con Material for MkDocs, adaptado de `Tema1.pdf`. Todo el contenido editable está en `docs/`, en formato Markdown. La configuración está en `mkdocs.yml`.

## Consultar en local

En este equipo el entorno ya está preparado. Haz doble clic en `iniciar.cmd` y abre <http://127.0.0.1:8000>. Mantén abierta la ventana mientras lo consultas; `Ctrl+C` detiene el servidor. Si ya está funcionando, no necesitas iniciarlo de nuevo.

Para instalarlo en otro equipo con Python 3.12:

```powershell
python -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m mkdocs serve
```

Los cambios guardados en `docs/` se actualizan en la vista local.

## Generar la web estática

```powershell
.\.venv\Scripts\python.exe -m mkdocs build --strict
```

El resultado se guarda en `site/`. No edites esa carpeta: vuelve a generar la web después de cambiar los Markdown.

## Publicar después en GitHub Pages

El proyecto está preparado para publicarse, pero no se ha subido a GitHub.

1. Crea un repositorio y sube los archivos del proyecto a la rama `main`, incluida la carpeta oculta `.github`. No subas `.venv`, `tmp` ni `site`.
2. Añade a `mkdocs.yml` los valores reales de tu repositorio, por ejemplo:

   ```yaml
   site_url: https://TU_USUARIO.github.io/TU_REPOSITORIO/
   repo_url: https://github.com/TU_USUARIO/TU_REPOSITORIO
   ```

3. En la pestaña **Actions**, comprueba que termina el flujo «Publicar documentación». Este genera la rama `gh-pages`.
4. En **Settings → Pages**, selecciona **Deploy from a branch**, rama `gh-pages` y carpeta `/ (root)`. Guarda los cambios.
5. Las siguientes actualizaciones de `main` regenerarán la web automáticamente. Si usas otro nombre de rama, cambia `branches` en `.github/workflows/pages.yml`.

El flujo utiliza el token automático del repositorio con permiso de escritura; no necesitas añadir un token personal. Si una política de la organización bloquea ese permiso, su administrador deberá habilitarlo.

Referencia: [publicación con Material for MkDocs](https://squidfunk.github.io/mkdocs-material/publishing-your-site/).

## Personalizar

- Colores, nombre, menú y funciones: `mkdocs.yml`.
- Estilos adicionales: `docs/stylesheets/extra.css`.
- Nuevos temas: añade sus Markdown en `docs/` y sus entradas en `nav`.

No se encontró una configuración anterior en la carpeta de proyectos; se ha utilizado el tema Material con paleta verde azulado, buscador en español y selector de modo claro/oscuro.
