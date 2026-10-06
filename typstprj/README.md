# Plantilla Typst para propuesta de tesis

Esta plantilla permite crear una propuesta de tesis con portada institucional, índice, estilos académicos, secciones temáticas, cronograma y bibliografía. El proyecto está dividido en archivos para facilitar su edición, reutilización y mantenimiento.

## Requisitos

- Tener una cuenta en Typst Web o instalar Typst en el equipo.
- Conservar la estructura de carpetas del proyecto.
- Disponer de los archivos institucionales `assets/perfiles.png` y `assets/cintillo.png`.
- Colocar las tipografías Montserrat en la carpeta `fonts/` si no están instaladas en el sistema.

## Instalación

1. Descarga el archivo `typst-thesis-proposal.zip` disponible en esta página.
2. Descomprime el archivo en una carpeta de trabajo.
3. Verifica que `main.typ`, `data.typ`, `styles.typ`, `components.typ`, `cover.typ`, `referencias.bib`, `assets/`, `fonts/` y `sections/` conserven la misma ubicación relativa.
4. Abre la carpeta como proyecto en Typst Web o en un editor compatible con Typst.

## Configuración inicial

Abre `data.typ` y sustituye los datos de ejemplo por la información del proyecto:

- Institución y unidad académica.
- Programa y línea de investigación.
- Tipo, título y subtítulo del documento.
- Asignatura y clave.
- Nombre, matrícula y correo del estudiante.
- Nombre de la persona asesora y, si corresponde, de la persona coasesora.
- Ciudad, fecha y periodo académico.

Los cambios realizados en `data.typ` se reflejan automáticamente en la portada, el encabezado y el pie de página.

## Edición del contenido

Cada apartado académico se encuentra en la carpeta `sections/`. Edita el archivo correspondiente sin modificar las instrucciones `#include` de `main.typ`.

- `00-indice.typ`: índice del documento.
- `01-resumen.typ`: resumen y palabras clave.
- `02-planteamiento.typ`: contexto, problema, pregunta y justificación.
- `03-objetivos.typ`: objetivo general y objetivos específicos.
- `04-estado-arte.typ`: marco teórico, antecedentes e hipótesis.
- `05-metodologia.typ`: diseño, datos, modelos, evaluación y ética.
- `06-plan-trabajo.typ`: cronograma de actividades.
- `07-resultados.typ`: resultados y contribuciones esperadas.
- `08-recursos.typ`: recursos, viabilidad y riesgos.
- `09-anexos.typ`: instrumentos y material complementario.

## Imágenes institucionales

Guarda los recursos gráficos con estos nombres y rutas exactas:

- `assets/perfiles.png`: franja institucional superior de la portada.
- `assets/cintillo.png`: cintillo institucional inferior.

Si utilizas otros nombres, actualiza también las rutas dentro de `cover.typ`.

## Tipografías

La plantilla intenta utilizar Montserrat y, como alternativas, Inter y Noto Sans. Si deseas distribuir el proyecto con la misma apariencia en diferentes equipos, conserva los archivos `.ttf` dentro de `fonts/` y configura el entorno de compilación para reconocer esa carpeta.

## Bibliografía

Agrega las fuentes en `referencias.bib` con formato BibTeX. Para citar una referencia desde cualquier sección, utiliza su clave bibliográfica con la sintaxis de citas de Typst. La bibliografía se genera automáticamente al final del documento con estilo IEEE.

## Compilación

Para generar el PDF desde una terminal, sitúate en la carpeta raíz del proyecto y ejecuta:

`typst compile main.typ propuesta-tesis.pdf --font-path fonts`

Para recompilar automáticamente cuando guardes cambios, utiliza:

`typst watch main.typ propuesta-tesis.pdf --font-path fonts`

En Typst Web, carga todos los archivos respetando la estructura de carpetas y abre `main.typ`; la vista previa se actualizará automáticamente.

## Personalización del diseño

- Modifica colores, márgenes, encabezados, pies de página y estilos tipográficos en `styles.typ`.
- Ajusta los componentes reutilizables, como las tarjetas informativas, en `components.typ`.
- Cambia únicamente la composición de la portada en `cover.typ`.
- Conserva en `main.typ` el orden de las secciones que deban aparecer en el documento final.

## Recomendaciones

- No cambies las rutas de archivos sin actualizar sus referencias.
- Mantén el contenido académico separado de los estilos.
- Compila el documento después de cada cambio estructural.
- Sustituye todos los textos de ejemplo antes de entregar la propuesta.
- Revisa que las imágenes y las fuentes se incluyan al compartir el proyecto.