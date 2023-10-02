#let sidenote(content) = {
  place(dx: 29em,
    block(
      // fill: yellow,
      breakable: false,
      width: 14em,
      content
    )
  )
}


#let template(
  title: none,
  abstract: none,
  authors: (),
  date: datetime.today(),
  doc,
  ) = {

    set page(
      paper: "a4",
      margin: (y:9em, left: 5em, right: 23em),
      header: locate(loc => {
      if(loc.page() != 1) {
        set text(font: "EtBb", weight: "semibold", size: 8pt, tracking: 1.1pt, number-type: "old-style", number-width: "tabular")
        place(right, dy: 8em, dx: 25em)[#upper(title) #h(1em) #text(size:12pt, counter(page).display()
        )]
      }
      }),
    )

    // Paper identification (title, author, date)
    block(
      // fill: luma(230),
      width: 100%+23em-5em,
      inset: 0pt,
      radius: 4pt,
      text(font: "TeX Gyre Heros", size: 10pt, tracking: 2pt)[
        // title

        #text(size:13pt, upper(title))

        // authors
        // #set par(leading: 1pt, )
        #upper(authors.join(", ", last: " and "))

        // date
        #upper(date.display("[month repr:long] [day],[year]"))

        // abstract
        #pad(x: 5em, block(
          // fill: yellow,
          text(tracking: 0pt, abstract)
          ))
        ]
    )
    // Configure headings.
  set heading(numbering: none, )
  show heading: it => locate(loc => {
    // Find out the final number of the heading counter.
    let levels = counter(heading).at(loc)
    set text(16pt, weight: 400)
    if it.level == 1 [
      // We don't want to number of the acknowledgment section.
      #let is-ack = it.body in ([Acknowledgment], [Acknowledgement])
      // #set align(center)
      #set text(if is-ack { 10pt } else { 13pt })
      #set text(style: "italic")
      #v(18pt, weak: true)
      #if it.numbering != none and not is-ack {
        numbering(heading-numbering, ..levels)
        [.]
        h(7pt, weak: true)
      }
      #it.body
      #v(16pt, weak: true)
    ] else if it.level == 2 [
      // Second-level headings are run-ins.
      #set par(first-line-indent: 0pt)
      #set text(style: "italic", size: 12pt)
      #v(14pt, weak: true)
      #if it.numbering != none {
        numbering(heading-numbering, ..levels)
        [.]
        h(7pt, weak: true)
      }
      #it.body
      #v(10pt, weak: true)
    ] else [
      // Third level headings are run-ins too, but different.
      #if it.level == 3 {
        numbering(heading-numbering, ..levels)
        [. ]
      }
      _#(it.body):_
    ]
  })



    set text(font: "EtBb", weight: "regular", size: 11pt, tracking: 0pt, number-type: "old-style", number-width: "tabular")
    doc
}
