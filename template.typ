#set page(
  paper: "us-letter",
  margin: (x: 0.5in, top: 0.5in + 0.5pt, bottom: 0.5in),
)

#set text(
  font: "New Computer Modern",
  size: 11pt,
  fill: black,
)

#set par(
  justify: false,
  leading: 0.24em,
)

#set list(
  marker: [#text(size: 7pt)[#sym.bullet]],
  indent: 14pt,
  body-indent: 5pt,
  spacing: 7.25pt,
)

#let section-title(title, above: 12pt, below: 6.5pt) = block(
  width: 100%,
  above: above,
  below: below,
  breakable: false,
)[
  #text(size: 12.2pt)[#smallcaps(title)]
  #v(-10.5pt)
  #line(length: 100%, stroke: 0.45pt)
]

#let heading(title, dates, subtitle, detail) = pad(
  left: 0.15in,
  right: 6pt,
)[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      column-gutter: 10pt,
      row-gutter: 6.5pt,
      [#strong(title)], [#dates],
      [#emph(subtitle)], [#emph(detail)],
    )
]

#let entry(title, dates, subtitle, detail) = block(
  width: 100%,
  above: 0pt,
  below: 10.5pt,
  breakable: false,
)[
  #heading(title, dates, subtitle, detail)
]

#let experience(title, dates, organization, location, bullets) = block(
  width: 100%,
  below: 11pt,
  breakable: false,
)[
  #heading(title, dates, organization, location)
  #v(-6.5pt)
  #pad(left: 0.15in, right: 6pt)[
    #set list(spacing: 7pt)
    #text(size: 10pt)[#bullets]
  ]
]

#let project(title, technologies, dates, bullets) = block(
  width: 100%,
  below: 13pt,
  breakable: false,
)[
  #pad(left: 0.15in, right: 6pt)[
    #grid(
      columns: (1fr, auto),
      align: (left, right),
      column-gutter: 10pt,
      [#strong(title) | #emph(technologies)], [#dates],
    )
  ]
  #v(-6.5pt)
  #pad(left: 0.15in, right: 6pt)[
    #text(size: 10pt)[#bullets]
  ]
]

#grid(
  columns: (1fr,),
  row-gutter: 6pt,
  align: center,
  [#scale(x: 82%, origin: center)[#text(size: 25pt, weight: "bold")[#smallcaps[Jake Gutierrez]]]],
  [#text(size: 10pt)[
    xxx-xxx-xxxx | #link("mailto:g@southwestern.edu")[#underline("g@southwestern.edu")] |
    #link("https://linkedin.com/in/jakegut")[#underline[linkedin.com/in/jakegut]] |
    #link("https://github.com/jakeryang")[#underline[github.com/jakeryang]]
  ]],
)

#v(7.5pt)

#section-title[Education]

#entry(
  [Southwestern University], [Georgetown, TX],
  [Bachelor of Arts in Computer Science, Minor in Business],
  [Aug. 2018 -- May 2021],
)

#entry(
  [Blinn College], [Bryan, TX],
  [Associate's in Liberal Arts],
  [Aug. 2014 -- May 2018],
)

#section-title(below: 6pt)[Experience]

#experience(
  [Undergraduate Research Assistant], [June 2020 -- Present],
  [Texas A&M University], [College Station, TX],
  list(
    [Developed a REST API using FastAPI and PostgreSQL to store data from learning management systems],
    [Developed a full-stack web application using Flask, React, PostgreSQL and Docker to analyze GitHub data],
    [Explored ways to visualize GitHub collaboration in a classroom setting],
  ),
)

#experience(
  [Information Technology Support Specialist], [Sep. 2018 -- Present],
  [Southwestern University], [Georgetown, TX],
  list(
    [Communicate with managers to set up campus computers used on campus],
    [Assess and troubleshoot computer problems brought by students, faculty and staff],
    [Maintain upkeep of computers, classroom equipment, and 200 printers across campus],
  ),
)

#experience(
  [Artificial Intelligence Research Assistant], [May 2019 -- July 2019],
  [Southwestern University], [Georgetown, TX],
  list(
    [Explored methods to generate video game dungeons based off of #emph[The Legend of Zelda]],
    [Developed a game in Java to test the generated dungeons],
    [Contributed 50K+ lines of code to an established codebase via Git],
    [Conducted a human subject study to determine which video game dungeon generation technique is enjoyable],
    [Wrote an 8-page paper and gave multiple presentations on-campus],
    [Presented virtually to the World Conference on Computational Intelligence],
  ),
)

#section-title(above: 15.25pt, below: 9pt)[Projects]

#project(
  [Gitlytics], [Python, Flask, React, PostgreSQL, Docker], [June 2020 -- Present],
  list(
    [Developed a full-stack web application using with Flask serving a REST API with React as the frontend],
    [Implemented GitHub OAuth to get data from user's repositories],
    [Visualized GitHub data to show collaboration],
    [Used Celery and Redis for asynchronous tasks],
  ),
)

#project(
  [Simple Paintball], [Spigot API, Java, Maven, TravisCI, Git], [May 2018 -- May 2020],
  list(
    [Developed a Minecraft server plugin to entertain kids during free time for a previous job],
    [Published plugin to websites gaining 2K+ downloads and an average 4.5/5-star review],
    [Implemented continuous delivery using TravisCI to build the plugin upon new a release],
    [Collaborated with Minecraft server administrators to suggest features and get feedback about the plugin],
  ),
)

#section-title(above: 14.5pt, below: 6.5pt)[Technical Skills]

#pad(left: 0.15in, right: 6pt)[
  #set text(size: 10pt)
  #set par(leading: 0.5em)
  #strong[Languages:] Java, Python, C/C++, SQL (Postgres), JavaScript, HTML/CSS, R \
  #strong[Frameworks:] React, Node.js, Flask, JUnit, WordPress, Material-UI, FastAPI \
  #strong[Developer Tools:] Git, Docker, TravisCI, Google Cloud Platform, VS Code, Visual Studio, PyCharm, IntelliJ, Eclipse \
  #strong[Libraries:] pandas, NumPy, Matplotlib
]
