= About me

Hey, my name is Kevin! I am a hobby emulator developer & computer science master’s student at Otto-von-Guericke University Magdeburg.

I quite enjoy systems programming (compilers & emulation), computer graphics and typesetting – my languages of choice are Rust, C++ and Typst. Besides that, I regularly contribute to open-source projects by developing and maintaining packages for the Typst ecosystem or improving GPU offloading capabilities in the Rust compiler.

During my studies, I evaluated the use of just-in-time compilation for GBA emulation with different compiler backends for my bachelor thesis while my master thesis focused on the design of safe interfaces for single-source heterogeneous computing in Rust.

I’ve developed emulators for the following systems:

- CHIP-8 – the “Hello, World” of emulation development.
- Color Game Boy – featuring a browser-based WASM version.
- Game Boy Advance – featuring an experimental JIT with `cranelift`.

For my next emulation project, I plan to tackle a 3D console such as the PlayStation 1 or Nintendo DS to elevate my computer graphics fundamentals.
When I am not staring at code, I either hit the gym or climb the virtual skies in MSFS 2024 on VATSIM.

#divider()
#html.div(id: "contact", {
  link("mailto:mail@kevio.eu", image(
    "../assets/mail.svg",
    width: 3em,
    alt: "An envelope / mail icon",
  ))
  link(
    "https://github.com/xkevio",
    image(
      "../assets/github.png",
      width: 3em,
      alt: "GitHub Icon",
    ),
  )
  link("https://bsky.app/profile/kevio.eu", image(
    "../assets/bsky.svg",
    width: 3em,
    alt: "A butterfly representing the Bluesky icon",
  ))
  link(
    "https://machteburch.social/@kevio",
    image("../assets/mstdn.svg", width: 3em, alt: "Mastodon Icon"),
  )
})
