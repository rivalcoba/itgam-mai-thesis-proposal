# MAI THESIS PROPOSAL TEMPLATE

![Encabezado del proyecto](typstprj/assets/perfiles.png)

Plantilla para elaborar propuestas de tesis de la Maestría en Inteligencia Artificial del TecNM Virtual, Campus Gustavo A. Madero.

## Resumen rápido

- **Documento académico en Typst** para propuestas de tesis.
- **Portada institucional** con franjas oficiales y tarjetas informativas.
- **Contenido modular** separado por archivos para facilitar la edición.
- **Diseño personalizable** sin mezclar contenido con estilo.

## Estructura del proyecto

```text
itgam-mai-thesis-proposal/
├── main.typ
├── data.typ
├── styles.typ
├── components.typ
├── cover.typ
├── referencias.bib
├── assets/
├── fonts/
└── sections/
```

### ¿Qué hace cada archivo?

| Archivo | Función |
| --- | --- |
| `main.typ` | Ensambla todo el documento final. |
| `data.typ` | Contiene los datos del proyecto y de las personas participantes. |
| `styles.typ` | Define colores, márgenes, tipografías y estilos globales. |
| `components.typ` | Incluye bloques reutilizables como tarjetas informativas. |
| `cover.typ` | Construye la portada institucional. |
| `referencias.bib` | Guarda la bibliografía en formato BibTeX. |
| `assets/` | Contiene imágenes institucionales. |
| `fonts/` | Contiene tipografías locales opcionales. |
| `sections/` | Contiene el contenido académico dividido por apartados. |

## Cómo está construida la plantilla

La plantilla está pensada como un proyecto modular. Eso significa que el contenido, la presentación visual y la estructura del documento viven en archivos separados.

### Portada

La portada se compone de cuatro partes principales:

1. **Franja superior institucional**
   - Se carga desde `typstprj/assets/perfiles.png`.
   - Funciona como encabezado visual de la portada.

2. **Bloque central principal**
   - Muestra el tipo de documento, el título, el subtítulo y la información de la asignatura.
   - Tiene un fondo azul institucional y acentos dorados.

3. **Bloques informativos**
   - Muestran datos como estudiante, programa, asesor, fecha y revisores.
   - Se construyen con componentes reutilizables definidos en `components.typ`.

4. **Franja inferior institucional**
   - Se carga desde `typstprj/assets/cintillo.png`.

## Cómo editar la plantilla

### 1. Cambiar los datos generales

Edita `data.typ` para actualizar:

- institución y unidad académica
- programa y línea de investigación
- título y subtítulo
- asignatura y clave
- nombre, matrícula y correo del estudiante
- asesor, coasesor y revisores
- ciudad, fecha y periodo académico

Los cambios se reflejan automáticamente en la portada y en otras secciones que usen esas variables.

### 2. Modificar la portada

Edita `cover.typ` si quieres cambiar la composición visual de la portada.

- Para cambiar textos, modifica `data.typ`.
- Para cambiar distribución, colores o bloques, modifica `cover.typ`.
- Para cambiar tarjetas reutilizables, modifica `components.typ`.

### 3. Editar el contenido académico

Cada apartado está separado en `sections/`.

- `00-indice.typ`: índice del documento
- `01-resumen.typ`: resumen y palabras clave
- `02-planteamiento.typ`: contexto, problema, pregunta y justificación
- `03-objetivos.typ`: objetivo general y específicos
- `04-estado-arte.typ`: marco teórico, antecedentes e hipótesis
- `05-metodologia.typ`: diseño, datos, modelos, evaluación y ética
- `06-plan-trabajo.typ`: cronograma de actividades
- `07-resultados.typ`: resultados y contribuciones esperadas
- `08-recursos.typ`: recursos, viabilidad y riesgos
- `09-anexos.typ`: instrumentos y material complementario

### 4. Personalizar estilos

Edita `styles.typ` si deseas cambiar:

- colores institucionales
- tamaños de texto
- márgenes
- encabezados y pies de página
- estilos tipográficos

### 5. Ajustar componentes reutilizables

Edita `components.typ` para modificar elementos repetidos como tarjetas, recuadros o bloques informativos.

### 6. Bibliografía

Agrega o modifica referencias en `referencias.bib` usando formato BibTeX. Después, cita las fuentes desde las secciones con la sintaxis de Typst.

## Imágenes institucionales

La plantilla utiliza estas imágenes:

- `typstprj/assets/perfiles.png`: encabezado superior de la portada
- `typstprj/assets/cintillo.png`: cintillo inferior de la portada
- `typstprj/figures/Logotipo_Maestria_oficial-01.png`: logotipo institucional adicional

Si cambias los nombres o rutas, actualiza también las referencias dentro de `cover.typ`.

## Requisitos

- Tener una cuenta en Typst Web o instalar Typst en el equipo.
- Conservar la estructura de carpetas del proyecto.
- Disponer de las imágenes institucionales.
- Colocar las tipografías Montserrat en la carpeta `fonts/` si no están instaladas en el sistema.

## Compilación

### Desde terminal

```bash
typst compile main.typ propuesta-tesis.pdf --font-path fonts
```

### Compilación automática

```bash
typst watch main.typ propuesta-tesis.pdf --font-path fonts
```

### En Typst Web

Carga todos los archivos respetando la estructura de carpetas y abre `main.typ`. La vista previa se actualizará automáticamente.

## Recomendaciones

- No cambies las rutas de archivos sin actualizar sus referencias.
- Mantén el contenido académico separado de los estilos.
- Compila el documento después de cada cambio estructural.
- Sustituye todos los textos de ejemplo antes de entregar la propuesta.
- Revisa que las imágenes y las fuentes se incluyan al compartir el proyecto.
