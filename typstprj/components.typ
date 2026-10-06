#import "styles.typ": burgundy, gold, line-gray, muted, navy

#let tracking-label(body) = text(
  size: 10pt,
  weight: "bold",
  tracking: 1.4pt,
  fill: burgundy,
)[
  #body
]

#let info-card(label, primary, secondary: none, height: 29mm, inset-y: 4mm) = block(
  width: 100%,
  height: height,
  fill: white,
  stroke: 0.5pt + line-gray,
  radius: 1.5mm,
  inset: (
    x: 5mm,
    y: inset-y,
  ),
)[
  #grid(
    columns: (1.2mm, 1fr),
    column-gutter: 3mm,
    rect(
      width: 1mm,
      height: 8mm,
      fill: gold,
      radius: 0.5mm,
    ),
    [
      #text(
        size: 7.4pt,
        weight: "bold",
        tracking: 0.9pt,
        fill: burgundy,
      )[
        #upper(label)
      ]

      #v(0.8mm)

      #text(
        size: 10pt,
        weight: "bold",
        fill: navy,
      )[
        #primary
      ]

      #if secondary != none [
        #v(0.5mm)
        #text(
          size: 7.6pt,
          fill: muted,
        )[
          #secondary
        ]
      ]
    ],
  )
]
