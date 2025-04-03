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
    margin: (top: 13cm, left: 2cm, right: 2cm, bottom: 2cm),
    header: [
      #place(
        left,
        dy: 40pt,
        image(logo, height: 9cm),
      )
      #place(
        top + center,
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
  set text(lang: "GB", size: 30pt)


  show heading: it => [
    #set align(center)
    #set text(olive)
    #pad(top: -0.6em, bottom: -0.6em)[#it.body]
    #line(length: 100%, stroke: 1.5pt + olive)
  ]

  set par(leading: 0.3em)

  block(
    height: 100%,
    columns(4, gutter: 2em)[
      #body
    ],
  )
}
