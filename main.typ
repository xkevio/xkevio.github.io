#import "lib.typ": post, post-index-to-post, site
#set document(author: "Kevio", keywords: (
  "kevio",
  "xkevio",
  "blog",
  "Game Boy",
  "Game Boy Advance",
  "Emulation",
))

#site(
  home: post(path: "index.html", title: [Home], label: <home>, include "index.typ"),
  nav: (
    post(path: "about.html", title: [About], label: <about>, include "about.typ"),
    post(path: "resume.pdf", label: <resume>, include "resume.typ"),
    post(path: "projects.html", title: [Projects], label: <projects>, include "projects.typ"),
  ),
  posts: post-index-to-post(json("post-index.json")),
  styles: (
    asset("style.css", read("style.css")),
  ),
)
