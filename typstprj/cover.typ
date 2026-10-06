#import "styles.typ": burgundy, gold, line-gray, navy, paper-gray
#import "components.typ": info-card

#let cover(data) = page(
  paper: "a4",
  margin: 0pt,
  header: none,
  footer: none,
  fill: white,
)[
  #grid(
    columns: (1fr,),
    rows: (34mm, 92mm, 128mm, 43mm),
    row-gutter: 0pt,

    // Identidad institucional.
    align(center + horizon)[
      #image(
        "assets/perfiles.png",
        width: 100%,
        height: 34mm,
        fit: "contain",
      )
    ],

    // Titulo y datos institucionales.
    block(
      width: 100%,
      height: 100%,
      fill: navy,
    )[
      #pad(
        left: 18mm,
        right: 18mm,
        top: 8mm,
        bottom: 8mm,
      )[
        #grid(
          columns: (1.2mm, 1fr),
          column-gutter: 8mm,
          rect(
            width: 1mm,
            height: 68mm,
            fill: gold,
            radius: 0.5mm,
          ),
          [
            #grid(
              columns: (1fr, auto),
              column-gutter: 5mm,
              text(
                size: 8.5pt,
                weight: "bold",
                fill: white,
              )[
                #data.institution
              ],
              text(
                size: 8pt,
                fill: rgb("#cbd3e0"),
              )[
                #data.unit
              ],
            )

            #v(4mm)

            #text(
              size: 8pt,
              weight: "bold",
              tracking: 1pt,
              fill: gold,
            )[
              #upper(data.document-type)
            ]

            #v(3mm)

            #par(
              leading: 0.98em,
              justify: false,
              first-line-indent: 0pt,
            )[
              #align(left)[
                #text(
                  size: 24pt,
                  weight: "bold",
                  fill: white,
                  hyphenate: false,
                )[
                  #data.title
                ]
              ]
            ]

            #v(2.5mm)

            #par(leading: 1.15em)[
              #text(
                size: 10.5pt,
                fill: rgb("#e1e7ef"),
              )[
                #data.subtitle
              ]
            ]
          ],
        )
      ]
    ],

    // Datos academicos y comite evaluador.
    block(
      width: 100%,
      height: 100%,
      fill: paper-gray,
    )[
      #pad(
        left: 15mm,
        right: 15mm,
        top: 6mm,
        bottom: 5mm,
      )[
        #grid(
          columns: (auto, 1fr),
          column-gutter: 4mm,
          text(
            size: 8.5pt,
            weight: "bold",
            tracking: 0.8pt,
            fill: navy,
          )[INFORMACION DE LA PROPUESTA],
          line(
            length: 100%,
            stroke: 0.6pt + gold,
          ),
        )

        #v(2mm)

        #grid(
          columns: (1fr, 1fr),
          rows: (29mm, 29mm),
          column-gutter: 4mm,
          row-gutter: 4mm,
          info-card(
            "PRESENTA",
            data.student,
            secondary: [
              Matrícula: #data.student-id \\
              #data.email
            ],
          ),
          info-card(
            "PROGRAMA",
            data.program,
            secondary: [
              #data.research-line \\
              #data.period
            ],
          ),
          info-card(
            "DIRECCION DE TESIS",
            data.advisor,
            secondary: [Responsable de la dirección],
          ),
          info-card(
            "ENTREGA",
            data.date,
            secondary: [
              #data.city \\
              #data.period
            ],
          ),
        )

        #v(2.5mm)

        #grid(
          columns: (auto, 1fr),
          column-gutter: 4mm,
          text(
            size: 7.8pt,
            weight: "bold",
            tracking: 0.7pt,
            fill: burgundy,
          )[COMITE EVALUADOR],
          line(
            length: 100%,
            stroke: 0.45pt + line-gray,
          ),
        )

        #v(1.5mm)

        #grid(
          columns: (1fr, 1fr, 1fr),
          column-gutter: 4mm,
          info-card(
            "CODIRECTOR",
            data.coadvisor,
            height: 22mm,
            inset-y: 2.5mm,
          ),
          info-card(
            "REVISOR 1",
            data.reviewer1,
            height: 22mm,
            inset-y: 2.5mm,
          ),
          info-card(
            "REVISOR 2",
            data.reviewer2,
            height: 22mm,
            inset-y: 2.5mm,
          ),
        )

        #v(2.5mm)

        #line(
          length: 100%,
          stroke: 0.45pt + line-gray,
        )

        #v(1.5mm)

        #grid(
          columns: (auto, 1fr, auto, auto),
          column-gutter: 3mm,
          text(
            size: 6.8pt,
            weight: "bold",
            tracking: 0.5pt,
            fill: burgundy,
          )[ASIGNATURA],
          text(
            size: 8.2pt,
            weight: "bold",
            fill: navy,
          )[ #data.course ],
          text(
            size: 6.8pt,
            weight: "bold",
            tracking: 0.5pt,
            fill: burgundy,
          )[CLAVE],
          text(
            size: 8.2pt,
            weight: "bold",
            fill: navy,
          )[ #data.course-code ],
        )
      ]
    ],

    // Cierre institucional.
    align(center + horizon)[
      #image(
        "assets/cintillo.png",
        width: 62mm,
        height: 34mm,
        fit: "contain",
      )
    ],
  )
]
