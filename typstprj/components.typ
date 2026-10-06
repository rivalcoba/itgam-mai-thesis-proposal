#import "styles.typ": (
  navy,
  burgundy,
  muted,
  paper-gray,
  line-gray,
)

#let tracking-label(body) = text(
  size: 7.5pt,
  weight: "bold",
  tracking: 1.4pt,
  fill: burgundy,
)[
  #body
]

#let info-card(label, primary, secondary: none) = block(
  width: 100%,
  height: 29mm,
  fill: paper-gray,
  stroke: 0.55pt + line-gray,
  radius: 2.5mm,
  inset: (
    x: 6mm,
    y: 4.5mm,
  ),
)[
  #grid(
    columns: (1.5mm, 1fr),
    column-gutter: 4mm,
    rect(
      width: 1.2mm,
      height: 8mm,
      fill: burgundy,
      radius: 0.6mm,
    ),
    [
      #tracking-label(label)
      #v(2.2mm)

      #text(
        size: 10.5pt,
        weight: "bold",
        fill: navy,
      )[
        #primary
      ]

      #if secondary != none [
        #v(1.2mm)
        #text(
          size: 8.3pt,
          fill: muted,
        )[
          #secondary
        ]
      ]
    ],
  )
]