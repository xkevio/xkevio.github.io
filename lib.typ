#let style-state = state("styles", ())

#let time(datetime) = html.time(datetime: datetime, style: "color: gray", datetime.display())
#let html-custom(title, body) = html.html(lang: "en", {
  html.head({
    html.meta(charset: "utf-8")
    html.meta(name: "viewport", content: "width=device-width, initial-scale=1")
    html.meta(name: "author", content: document.author.join(","))
    html.meta(name: "keywords", content: document.keywords.join(", "))

    html.title(title)
    html.link(rel: "icon", type: "image/x-icon", href: "/favicon.png")

    for stylesheet in style-state.get() {
      html.link(rel: "stylesheet", href: stylesheet.path)
    }
  })
  html.body(body)
})

/// A post bundle.
///
/// Wrapper around `document()` with `body` inserted into `<main>`.
/// Loads styling, header, nav bar and sidebar.
///
/// -> content
#let post(path: "", title: none, label: <__default>, body) = context [#document(path)[
    // Early-return for non-HTML "posts".
    #if path.ends-with("pdf") {
      body
    } else {
      show: html-custom.with([#title -- kevio's homepage])
      html.header(std.title[kevio's homepage])
      html.nav(class: "site", [
        - #link(<home>)[Home]
        - #link(<about>)[About]
        - #link(<resume>)[Résumé]
        - #link(<projects>)[Projects]
      ])

      html.main({
        html.section(class: "main", body)
        html.section(class: "sidebar")[
          #html.aside[

            #image(
              "assets/kevio.png",
              width: 150pt,
              alt: "The roach from SpongeBob eating a crabby patty underwater.",
            )

            = Kevin K. (kevio)

            _Software Engineer & Master's Student_

            #divider()

            Hey, my name is Kevin! I am a computer science master’s student at Otto-von-Guericke University Magdeburg.

            I quite enjoy systems programming (compilers & emulation), computer graphics and typesetting – my languages of choice are Rust, C++ and Typst.

            #divider()

            _Magdeburg, Germany_

            #table(columns: (4 * (1fr,)))[#link("mailto:mail@kevio.eu", image(
              "assets/mail.svg",
              width: 3em,
              alt: "An envelope / mail icon",
            ))][#link(
              "https://github.com/xkevio",
              image(
                "assets/github.png",
                width: 3em,
                alt: "GitHub Icon",
              ),
            )][#link("https://bsky.app/profile/xkev.io", image(
              "assets/bsky.svg",
              width: 3em,
              alt: "A butterfly representing the Bluesky icon",
            ))][#link(
              "https://machteburch.social/@kevio",
              image("assets/mstdn.svg", width: 3em, alt: "Mastodon Icon"),
            )]
          ]
        ]
      })
    }
  ]#std.label(str(label))
]

/// Convert `post-index.json` to `post` bundles.
/// NOTE: Find approach to extract description programmatically.
#let post-index-to-post(post-index) = {
  for (k, v) in post-index {
    let post-label = k.trim("./posts/", at: start).trim(".typ", at: end)
    let post-title = v.title

    post(
      path: k.replace(".typ", ".html"),
      title: post-title,
      label: post-label,
      include k,
    )
  }
}

/// Site management.
///
/// Combines all `document` and `asset` bundles categorized
/// by a home page (index.html), nav elements and posts. Optional style assets
/// may also be provided.
///
/// -> content
#let site(
  home: auto,
  nav: (),
  posts: (),
  styles: (),
) = {
  // Add stylesheet paths to state for custom HTML head.
  if styles.len() > 0 {
    style-state.update(styles)
  }

  // Assume default `index.typ` -> `index.html` conversion if no custom landing page is provided.
  if home == auto {
    post(path: "index.html", title: [Home], label: <index>, include "index.typ")
  } else {
    home
  }

  nav.join()
  posts
  styles.join()

  // NOTE: Add `extra` option for random assets.
  asset("favicon.png", read("favicon.png", encoding: none))
}
