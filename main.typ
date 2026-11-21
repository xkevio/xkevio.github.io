#import "lib.typ": post, post-index-to-post, site
#set document(
  author: "Kevio",
  description: "Kevio's personal homepage and digital footprint.",
  keywords: (
    "kevio",
    "xkevio",
    "blog",
    "Game Boy",
    "Game Boy Advance",
    "Emulation",
  ),
)

#site(
  pages: (
    post(path: "index.html", title: [Home], label: <home>, include "pages/index.typ"),
    post(path: "about.html", title: [About], label: <about>, include "pages/about.typ"),
    post(path: "resume.pdf", label: <resume>, include "pages/resume.typ"),
    post(path: "projects.html", title: [Projects], label: <projects>, include "pages/projects.typ"),
  ),
  posts: post-index-to-post(json("utils/post-index.json")),
  styles: (asset("style.css", read("style.css")),),
  extra: (
    asset("favicon.png", read("assets/favicon.png", encoding: none)),
    asset("CNAME", read("CNAME")),
    asset("gameboy/index.html", read("gameboy/index.html")),
    asset("gameboy/kevboy.js", read("gameboy/kevboy.js")),
    asset("gameboy/sw.js", read("gameboy/sw.js")),
    asset("gameboy/kevboy_bg.wasm", read("gameboy/kevboy_bg.wasm", encoding: none)),
  ),
)
