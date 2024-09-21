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

#let randomZh(n) = {
  let t = "我能吞下玻璃而不伤身体"

  let i = calc.floor(n * 3 / t.len())
  while i > 0 {
    t += t
    i = i - 1
  }

  t.slice(0, n*3)
}


#contact_info("姓名", "上海", "12346789087", "x@x.com")

#section("简介")[
  #randomZh(20)
]

#section("技能")[
  - 技术栈：#randomZh(5)，#randomZh(5)
  - 语言：Ruby，Python
  - 其他：#randomZh(11)
]

#section("工作")[
  #job("xxx公司", "xx工程师", "2000.3", "至今")
  #randomZh(20)\
  - #randomZh(4):
    - #randomZh(11)
    - #randomZh(11)
  - #randomZh(7):
    - #randomZh(10)
    - #randomZh(10)
  - #randomZh(5):
    - #randomZh(10)


  #job("xxx公司", "xx工程师", "2000.3", "2000.7")
  #randomZh(20)\
  - #randomZh(10)
  - #randomZh(10)
]

#section("项目")[
  #link("")[
    *#randomZh(6)*
  ]\
  #randomZh(15)
]
#section("教育")[
  #job("xxxx学校", "xxxx专业", "2000.9", "2019.6")
]
