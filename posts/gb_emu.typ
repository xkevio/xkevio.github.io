#metadata((
  "title": "Game Boy (DMG-01) Emulation",
  "date": datetime(year: 2023, month: 3, day: 20),
  "description": "It’s been a few months but my Game Boy emulator is all but finished – or at least ready to be published. Now, for people following me on GitHub it has been available the entire time but now I am at a point where most major features are implemented, plus a few extras, and the UI is presentable!",
))<gb_emu.typ_meta>

= Game Boy (DMG-01) Emulation

It’s been a few months but my Game Boy emulator is all but finished -- or at least ready to be published. Now, for people following me on GitHub it has been available the entire time but now I am at a point where most major features are implemented, plus a few extras, and the UI is presentable!

Since I wrote the entire thing in Rust with `egui` and `eframe` as my backend, I was able to quite simply compile it to WASM using #link("https://trunk-rs.github.io/trunk/")[Trunk].

It’s available here: #link("https://kevio.eu/gameboy/")[Click here!]

The web version does have a few caveats and limitations such as audio sometimes being a little out of sync, no “Recent ROMs” list and “Store Save” directly downloading your save data instead of opening a file dialog. As for the emulation itself, I didn’t do anything crazy or special like a JIT or a FIFO PPU. Nevertheless, it does have sub-instruction timing, passes quite a few timer tests (and even serial tests!) and is overall accurate enough to play most games.

