#let cardiff-poster(
  project-title: none,
  author: none,
  author-email: none,
  school: none,
  supervisor: none,
  logo: none,
  body,
) = {
  set page(
    paper: "a1",
    flipped: true,
    margin: (top: 12cm, left: 2cm, right: 2cm, bottom: 2cm),
    header: [
      #place(
        left,
        dy: 40pt,
        image(logo, height: 9cm),
      )
      #place(
        top + center,
        // dx: 140pt,
        dy: 48pt,
        stack(
          dir: ttb,
          spacing: 45pt,
          text(size: 100pt, weight: "bold")[#project-title],
          text(size: 40pt)[#author (#author-email), #supervisor],
          text(size: 40pt)[#school],
        ),
      )
    ],
  )
  set text(lang: "GB", size: 21pt)


  show heading: it => [
    #set align(center)
    #set text(olive)
    #pad(top: -0.1em, bottom: -0.8em)[#it.body]
    #line(length: if it.depth == 1 { 100% } else { 80% }, stroke: 1.5pt + olive)
  ]


  show bibliography: it => [
    #set align(center)
    #set text(size: 13pt)
    #show heading: set text(size: 35pt)
    #set align(left)
    #it
  ]

  show figure: set text(18pt)


  set par(leading: 0.34em)

  set list(indent: 20pt)

  block(
    height: 100%,
    columns(4, gutter: 2em)[
      #body
    ],
  )
}
