#metadata((
  "title": "Game Boy Advance Emulation",
  "date": datetime(year: 2025, month: 6, day: 7),
  "description": "I am still very much into developing emulators (with some downtime here and there) and even worked on a new for one for the Game Boy Advance, partially also for my bachelor's thesis. This introduced me to a little bit of Just-in-Time compilation.",
))<gba_emu.typ_meta>

= Game Boy Advance Emulation

I am still very much into developing emulators (with some downtime here and there) and even worked on a new one for the Game Boy Advance, partially also for my bachelor’s thesis. This introduced me to a little bit of Just-in-Time compilation via `cranelift` – which was both a great source of frustration but also fun and learning. The JIT part of my GBA emulator is far from finished, and I should really get back to it as I don’t know anyone who has used `cranelift` for emulation yet, but at the very least the general interpreter is done and many games work, even those using Mode 7!

Currently, I use bindings to `SDL3` for the frontend part to have a simple frame buffer available with little to no other GUI elements. Unlike my previous emulator (#link(<gb_emu>)[Game Boy (DMG-01) Emulation]), this one uses LUTs (Lookup Tables) created at build-time with a `build.rs` to store all ARM7TDMI and THUMB opcodes. They can be generated based on certain bit patterns via masking such that the function pointer for a specific opcode can be indexed via that same masking technique in the interpreter. This greatly simplifies the _fetch-decode-execute_ loop and avoids gigantic `match`-statements.

The PPU is where I struggled the most with regards to sprite priority / background order / color effects in certain modes. At this point, it passes most tests and TONC demos with most games looking as they should; yet I am still unsure if I covered all cases correctly -- oh well.

Audio is still missing but 50% of the GBA APU is pretty much just the Game Boy APU which I have implemented before in addition to more sane PCM channels, so it should not be too difficult once I get around to it. I still plan on finishing the `cranelift`-based JIT and adding a dedicated scheduler.

#link("https://github.com/xkevio/kba")[>> Source code available here!]
