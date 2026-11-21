#set document(author: "Kevin Kulot", title: "Curriculum Vitae", keywords: ())
#set page(numbering: "1 / 1")
#set text(font: "New Computer Modern Sans", 10pt)
#set par(justify: true)
#set list(marker: [--])

#show heading.where(level: 1): set text(1.1em)
#show heading.where(level: 1): set block(spacing: 0.8em)
#show heading.where(level: 2): set block(stroke: (bottom: 1pt), width: 100%, inset: (y: 0.65em))
#show link: set text(luma(50))

#align(center)[
  = Kevin Axel Kulot

  *Master's Student / Software Developer*

  Magdeburg, Germany

  #(
    link("mailto:mail@kevio.eu"),
    link("https://kevio.eu")[kevio.eu],
    link("https://github.com/xkevio")[github.com/xkevio],
    link("https://linkedin.com/in/kevin-kulot-301999300")[linkedin.com/in/kevin-kulot-301999300],
  ).join(h(1em) + "|" + h(1em))
]

== Professional Summary

#pad(left: 2em)[
  I am a hobby emulator developer & computer science master’s student at Otto-von-Guericke University Magdeburg.
  I enjoy systems programming (compilers & emulation), computer graphics, general purpose GPU programming and typesetting – my languages of choice are Rust, C++ and Typst.
]

== Education

#grid(
  columns: (18%, auto),
  inset: (x: 1em),
  [#h(1em)2024 -- 2026],
  grid.vline(),
  [
    *Otto von Guericke University*, Magdeburg\
    _Master of Science in Computer Science_\
    #set text(.8em)
    - "On Safe Interfaces for Single-Source Heterogeneous Computing in Rust"
    - Graduated with an average grade of ??? and a thesis grade of ???.
  ],
)

#grid(
  columns: 2,
  inset: (x: 1em),
  [#h(1em)2019 -- 2024],
  grid.vline(),
  [
    *Otto von Guericke University*, Magdeburg\
    _Bachelor of Science in Computational Visualistics_\
    #set text(.8em)
    - "Performance Analysis of LLVM and Cranelift Codegen for Just-in-Time Compilation in Emulation"
    - Graduated with an average grade of 1.8 (GPA $approx$ 3.2) and a thesis grade of 1.2 (GPA $approx$ 3.8).
  ],
)

== Experience

#grid(
  columns: (18%, auto),
  inset: (x: 1em),
  [#h(1em)09/2024 --\ #h(1fr)01/2026],
  grid.vline(),
  [
    *VisCircle GmbH*, Hannover\
    _Software Developer (Part Time, Remote)_\
    #set text(.8em)
    At VisCircle GmbH, I worked on various projects such as:
    - Customizable 3D product configurators on the web with ThreeJS and TypeScript.
    - Various material shaders for multiple projects with in-house engine.
    - Enabling usage of WebXR technologies for certain showroom configurators.
  ],
)

#grid(
  columns: (18%, auto),
  inset: (x: 1em),
  [#h(1em)04/2023 --\ #h(1fr) 07/2023],
  grid.vline(),
  [
    *SURAG Medical GmbH*, Magdeburg\
    _Software Developer (Internship)_\
    #set text(.8em)
    During my 3-month internship at SURAG Medical GmbH, I worked on:
    - Rust-based prototypes for audio-based dual laparoscopy sensor firmware using Bluetooth Low Energy.
    - FFT-based noise filters to enhance raw hardware sensor signals with MATLAB.
    - Generation of clear binaural audio signals via ALSA & WASAPI audio drivers.
  ],
)

#grid(
  columns: (18%, auto),
  inset: (x: 1em),
  [#h(1em)05/2021 --\ #h(1fr) 10/2026],
  grid.vline(),
  [
    *Otto von Guericke University*, Magdeburg\
    _Teaching Assistant / Student Research Assistant_\
    #set text(.8em)
    - Teaching Assistant:
      - "Introduction to C++-Programming" during the winter term 2023/2024 and summer term 2026.
      - "Programming Paradigms" during the summer term 2022 and summer term 2025.
      - "Introduction to Computer Science" during the winter term 2022/2023.
    - Student Research Assistant:
      - Porting AMS LaTeX templates to Typst @ Institute for Intelligent Cooperating Systems (FIN, OVGU).
      - Automatic robot path finding @ Institute for Intelligent Cooperating Systems (FIN, OVGU).
      - Heat-based ray-tracing simulations @ Institute for Simulation & Graphics (FIN, OVGU).
  ],
)

== Projects

#pad(left: 2em)[
  - #link("https://github.com/xkevio/kba")[*κba (Game Boy Advance Emulation)*]: Game Boy Advance emulator with an SDL3-based GUI and CLI interface. Features an ARM7TDMI interpreter and experimental JIT compiler, a fully working PPU emulation, and compile-time opcode LUTs. Runs games & homebrew at full speed, passing known CPU test ROMs as well as complex graphical demos.

  - #link("https://github.com/xkevio/kevboy")[*kevboy (Game Boy Color Emulation)*]: A Game Boy and Game Boy Color emulator written in Rust, using egui for an immediate mode GUI and WASM-based browser version. Features a full UI with advanced options such as color palette selection, frame blending, scale modes, control & sound configuration, and state saving.

  - #link("https://github.com/parcio/templates")[*parcio-thesis / parcio-slides (Typst Templates)*]: ParCIO#footnote[Parallel Computing and I/O working group at OVGU Magdeburg]-inspired thesis & slides template made with Typst. Officially endorsed by the head of the working group and incorporated as a valid alternative; since used in numerous theses instead of the LaTeX variants.

  - #link("https://typst.app/universe/package/retrofit")[*retrofit (Custom Backreferences for Typst Bibliographies)*]: retrofit adds back-references, i.e., references to each page a citation was used, for all bibliography entries in a Typst document. Consists of a Rust-based plugin compiled to WASM which is then loaded by the corresponding Typst package. The plugin hooks into internal rendering code and constructs a sorted bibliography copy for correct assignment of back-references.
]
