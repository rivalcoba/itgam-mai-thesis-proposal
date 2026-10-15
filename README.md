# itgam-mai-thesis-proposal

![Encabezado del proyecto](typstprj/assets/perfiles.png)

Plantilla para elaborar propuestas de tesis de la Maestría en Inteligencia Artificial del TecNM Virtual, Campus Gustavo A. Madero.

## ¿Cómo está construida la plantilla?

Esta plantilla está organizada como un proyecto Typst separado en archivos para mantener el contenido, el estilo y la portada de forma independiente:

- `main.typ`: archivo principal que ensambla todo el documento.
- `data.typ`: variables con los datos del proyecto y de las personas participantes.
- `styles.typ`: colores, tipografías, márgenes y estilos globales.
- `components.typ`: componentes reutilizables como tarjetas o bloques informativos.
- `cover.typ`: composición exclusiva de la portada.
- `sections/`: carpeta con el contenido académico dividido por apartados.
- `referencias.bib`: bibliografía en formato BibTeX.
- `assets/`: imágenes institucionales utilizadas en la portada.
- `fonts/`: tipografías locales, si deseas conservar la misma apariencia en cualquier equipo.

La portada se construye con una estructura por bloques: una franja superior institucional, un bloque central con el título y los datos principales, una sección de tarjetas con la información académica y un cintillo institucional inferior.

## ¿Cómo editar cada parte?

### 1) Datos generales del proyecto

Edita `data.typ` para cambiar la información que aparece en toda la plantilla:

- institución y unidad académica
- programa y línea de investigación
- título y subtítulo
- asignatura y clave
- nombre, matrícula y correo del estudiante
- asesor, coasesor y revisores
- ciudad, fecha y periodo académico

Los cambios en este archivo se reflejan automáticamente en la portada y en las secciones que usan esas variables.

### 2) Portada

La portada se define en `cover.typ`.

Está compuesta por estos elementos:

- **Franja superior:** imagen `assets/perfiles.png`.
- **Bloque principal:** fondo azul con el tipo de documento, título, subtítulo y datos de la asignatura.
- **Tarjetas informativas:** muestran estudiante, programa, dirección de tesis, entrega y revisores.
- **Franja inferior:** imagen `assets/cintillo.png`.

Si quieres cambiar la composición visual, modifica `cover.typ`.
Si solo quieres actualizar textos, hazlo en `data.typ`.

### 3) Contenido académico

Cada sección está separada dentro de `sections/` para que puedas editarla sin afectar el diseño general.

Ejemplos:

- `00-indice.typ`: índice del documento.
- `01-resumen.typ`: resumen y palabras clave.
- `02-planteamiento.typ`: contexto, problema, pregunta y justificación.
- `03-objetivos.typ`: objetivo general y específicos.
- `04-estado-arte.typ`: marco teórico, antecedentes e hipótesis.
- `05-metodologia.typ`: metodología, datos, modelos y evaluación.
- `06-plan-trabajo.typ`: cronograma de actividades.
- `07-resultados.typ`: resultados esperados.
- `08-recursos.typ`: recursos, viabilidad y riesgos.
- `09-anexos.typ`: material complementario.

### 4) Estilos globales

Edita `styles.typ` si deseas cambiar:

- colores institucionales
- tamaños de texto
- márgenes
- encabezados y pies de página
- estilos tipográficos

### 5) Componentes reutilizables

El archivo `components.typ` concentra elementos que se repiten en el documento, como las tarjetas de información. Si deseas cambiar el estilo de estos bloques, este es el archivo correcto.

### 6) Bibliografía

Agrega o modifica referencias en `referencias.bib` usando formato BibTeX. Después, cita las fuentes desde las secciones con la sintaxis de Typst.

## Imágenes institucionales

La plantilla utiliza estas imágenes:

- `typstprj/assets/perfiles.png`: encabezado superior de la portada.
- `typstprj/assets/cintillo.png`: cintillo inferior de la portada.
- `typstprj/figures/Logotipo_Maestria_oficial-01.png`: logotipo institucional disponible para otras composiciones o materiales del proyecto.

Si cambias los nombres o rutas, recuerda actualizar también las referencias dentro de `cover.typ`.

## Requisitos

- Tener una cuenta en Typst Web o instalar Typst en el equipo.
- Conservar la estructura de carpetas del proyecto.
- Disponer de los archivos institucionales mencionados arriba.
- Colocar las tipografías Montserrat en la carpeta `fonts/` si no están instaladas en el sistema.

## Compilación

Para generar el PDF desde una terminal, sitúate en la carpeta raíz del proyecto y ejecuta:

```bash
typst compile main.typ propuesta-tesis.pdf --font-path fonts
```

Para recompilar automáticamente cuando guardes cambios:

```bash
typst watch main.typ propuesta-tesis.pdf --font-path fonts
```

En Typst Web, abre `main.typ` respetando la estructura de carpetas y la vista previa se actualizará automáticamente.

## Recomendaciones

- No cambies las rutas de archivos sin actualizar sus referencias.
- Mantén el contenido académico separado de los estilos.
- Compila el documento después de cada cambio estructural.
- Sustituye todos los textos de ejemplo antes de entregar la propuesta.
- Revisa que las imágenes y las fuentes se incluyan al compartir el proyecto.
