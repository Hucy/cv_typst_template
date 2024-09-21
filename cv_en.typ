#let primary_color = rgb("#7F96AD")
#show link: underline

#set text(
  size: 12pt,
  weight: "regular",
  font: ("linux libertine", "Microsoft YaHei", "PingFang SC"),
)
#set list(indent: .6em, marker: ([•]))

#set page(
  paper: "a4",
  margin: (left: 1.4cm, right: 1.4cm, top: .8cm, bottom: .8cm),
)
#set par(justify: true)

#let section(title, body) = {
  block[
    #set text(weight: "bold", size: 14pt, fill: primary_color)
    #h(0.2em)
    #title
    #box(width: 1fr, line(length: 100%, stroke: 0.5pt + primary_color))
  ]
  pad(x: .4em)[
    #body
  ]
}

#let contact_info(name, location, phone, email) = {
  grid(
    columns: (1fr),
    gutter: 0.4em,
    align(right)[
      #set text(size: 10pt)
      #location \
      #phone \
      #email
    ],
    rect(
      width: 100%,
      fill: primary_color,
      inset: 0.4em,
      [#align(left)[#text(fill: white, weight: "bold", size: 18pt)[#name]]],
    )
  )
}

#let job(company, title, start, ..end) = {
  let e = if end.pos().len() != 0 [-- #end.pos().at(0)]
  block[
    *#company* #h(1fr) #start #e \
    #title
  ]
}


#contact_info("Name Na", "US.AG", "012020", "x@x.com")

#section("Introduction")[
  #lorem(20)
]

#section("Skills")[
  - Tech Stack: #lorem(2), #lorem(4)
  - Languages: #lorem(1), #lorem(1)
  - Others: #lorem(1), #lorem(1)
]

#section("Work Experience")[
  #job("xxx company", "xxdeveloper", "2000.3", "Present")
  #lorem(20)\
  - #lorem(4):
    - #lorem(11)
    - #lorem(11)
  - #lorem(7):
    - #lorem(10)
    - #lorem(10)
  - #lorem(5):
    - #lorem(10)


  #job("xxx company", "xxdeveloper", "2000.3", "2000.7")
  #lorem(20)\
  - #lorem(10)
  - #lorem(10)
]

#section("Projects")[
  #link("")[
    *#lorem(6)*
  ]\
  #lorem(15)
]
#section("Education")[
  #job("xxxx", "xxxx", "2000.9", "2019.6")
]
