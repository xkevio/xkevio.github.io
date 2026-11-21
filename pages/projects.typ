= Projects

#html.details(open: true, {
  html.summary[Table of Contents]
  divider()
  outline(target: heading.where(level: 2).within(<projects>), title: none)
  divider()
})

== > #sym.kappa;ba -- Game Boy Advance Emulator

W.I.P. Game Boy Advance emulator, using `SDL3` for the GUI. Runs most games reasonably well, includes experiments with JIT compilation (by utilizing the `cranelift` compiler backend).

Uses a LUT generated at build-time for opcode lookups based on certain bit patterns.
Source code is available on #link("https://github.com/xkevio/kba")[GitHub].

#html.div(style: "display:flex", {
  image("../assets/gba.png", width: 50%, alt: "A screenshot of the Pokémon Emerald title screen.")
  image(
    "../assets/gba2.png",
    width: 50%,
    alt: "A screenshot of the Pokémon Emerald dry battery dialog.",
  )
})

== > kevboy -- Color Game Boy Emulator (+ DMG-01)

A Game Boy and Game Boy Color emulator written in Rust, using `egui` for an immediate mode GUI and WASM-based browser version. Runs fast and marks my first real foray into console emulation. Pre-built binaries as well as further installation instructions and the source code are available on #link("https://github.com/xkevio/kevboy")[GitHub].

#link("https://kevio.eu/gameboy/")[>> Browser version available here! <<]

#html.div(style: "display:flex", {
  image(
    "../assets/gb.png",
    width: 50%,
    alt: "A screenshot of the \"Kirby's Dream Land\" title screen.",
  )
  image(
    "../assets/gb2.png",
    width: 50%,
    alt: "A screenshot of the VRAM viewer, memory viewer, and other options in kevboy.",
  )
})

== > parcio-thesis / parcio-slides -- Typst Templates for ParCIO

#html.abbr(title: "Parallel Computing and I/O working group at OVGU Magdeburg")[ParCIO-inspired] thesis, report & slides template made with #link("https://github.com/typst/typst")[Typst]. Officially endorsed by the head of the working group and used since in numerous theses instead of the LaTeX variants.

Submitted to the Typst Universe as to make it available within the Typst package management ecosystem; maintained through several version updates. Now officially managed by the ParCIO group and available either through the #link("https://typst.app/universe/package/parcio-thesis")[Typst Universe] or their #link("https://github.com/parcio/templates")[ParCIO Templates] GitHub repository.

#image("../assets/thesis-slides.png", alt: "A thesis cover page and two slides.")

== > retrofit -- Custom Backreferences for Typst Bibliographies

`retrofit` adds back-references, i.e., references to each page a citation was used, for all bibliography entries in a Typst document.

#html.details[
  #html.summary[Click here for a usage example!]
  #image(
    "../assets/retrofit.png",
    alt: "An example usage of retrofit: A code block showing the API and the rendered result.",
  )
]

More precisely, `retrofit` queries for all instances of a citation in the document, collects the page(s) it is on and formats them according to the specified function with `link` elements to the cite-location. Available on #link("https://typst.app/universe/package/retrofit")[Typst Universe] or #link("https://github.com/xkevio/retrofit")[GitHub].

