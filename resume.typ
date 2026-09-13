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
  [#scale(x: 82%, origin: center)[#text(size: 25pt, weight: "bold")[#smallcaps[Zechariah Tan]]]],
  [#text(size: 10pt)[
    // 123-456-7890 | I have no work phone yet...
    #link("mailto:dev@zectan.com")[#underline("dev@zectan.com")] |
    #link("https://linkedin.com/in/zectan")[#underline[linkedin.com/in/zectan]] |
    #link("https://github.com/zS1L3NT")[#underline[github.com/zS1L3NT]]
  ]],
)

#v(7.5pt)

#section-title[Education]

#experience(
  [National Unversity of Singapore], [Aug. 2026 -- Present],
  [Bachelor of Computing in Computer Science], [],
  list(),
)

#experience(
  [Temasek Polytechnic], [Apr. 2021 -- May 2024],
  [Diploma in Information Technology with Merit], [3.98 GPA],
  list(
    [Course Valedictorian],
    [AWS Course Bronze Medal],
    [DBS Major Project Prize],
    [SCS Skills Mastery Award]
  ),
)

#section-title[Experience]

#experience(
  [WorldSkills Web Technologies Competitor & Coach], [Apr. 2024 -- Sep. 2024],
  [Temasek Polytechnic], [Singapore],
  list(
    [Earned an _International Bronze Medal_ in Web Technologies representing Singapore at WorldSkills Lyon 2024],
    [Developed training materials and coached competitors for WorldSkills Singapore 2025],
    [Coached a competitor who earned a _Gold Medal_ at WorldSkills Singapore and WorldSkills ASEAN 2025]
  ),
)

#experience(
  [Software Engineer Intern], [Oct. 2023 -- Feb. 2024],
  [Centre for Strategic Infocomm Technologies (CSIT)], [Singapore],
  list(
    [Built 3 Spring Boot microservices and a Next.js dashboard for indexing and viewing document data],
    [Integrated search, storage, message queues, and database services across the microservice architecture],
    [Deployed the microservices to Kubernetes and built observability pipelines for monitoring and logging],
    [Developed unit and integration tests for backend services as project requirements evolved],
  ),
)

#section-title[Projects]

#project(
  [YTMusic API], [TypeScript, npm], [Dec. 2021 -- Jul. 2024],
  list(
    [Published a type-safe YouTube Music API wrapper for retrieving songs, artists, lyrics and search results],
    [Grew the package to _2,500+ weekly npm downloads, 160+ GitHub stars and 40+ forks_],
    [Built runtime validation and automated tests to handle inconsistent upstream API responses],
  ),
)

#project(
  [Finpoint], [Laravel, PHP, React, TypeScript, Sqlite], [Apr. 2026 -- Present],
  list(
    [Built a personal finance tracker that consolidates transactions across multiple banks],
    [Categorised imported transactions into financial records for clearer spending analysis],
  ),
)

#project(
  [TheRook], [Rust], [Aug. 2025 -- Sep. 2025],
  list(
    [Built a chess engine in Rust using bitboards and precomputed attack data for efficient legal move generation],
    [Implemented Stockfish-backed perft tests to validate move generation across search trees reaching 15M+ nodes],
  ),
)

#project(
  [SounDroid V2], [Flutter, Dart, Express, TypeScript, Firebase], [Apr. 2022 -- Aug. 2022],
  list(
    [Built a full-stack mobile music streaming app with synchronised lyrics, offline downloads, and queue management],
    [Built user flows for authentication, account management, playlists, and search history],
  ),
)

#section-title[Technical Skills]

#pad(left: 0.15in, right: 6pt)[
  #set text(size: 10pt)
  #set par(leading: 0.5em)
  #strong[Languages:] TypeScript, Rust, Java, PHP, Dart, SQL \
  #strong[Frameworks:] React, Next.js, Flutter, Laravel, Spring Boot, Express, Tailwind CSS \
  #strong[Databases:] Elasticsearch, MySQL, PostgreSQL, Sqlite, Firestore \
  #strong[Cloud & Hosting:] AWS, Vercel, Firebase, Cloudflare, Fly.io, Heroku \
  #strong[Infrastructure & DevOps:] Docker, Kubernetes, NGINX, GitHub Actions, Prometheus, Grafana \
]
