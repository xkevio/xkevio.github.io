#import "lib.typ": time

#figure(numbering: none)[
  ```
  kevio@systems:/$ cowsay $WELCOME_MESSAGE
                   ______________________________________
                  / hello world, this is kevin's digital \
                  \ footprint, and this cow says hi      /
                   --------------------------------------
                          \   ^__^
                           \  (oo)\_______
                              (__)\       )\/\
                                  ||----w |
                                  ||     ||
  ```

]

#divider()

= Recent Posts

// Automatically read out all posts from index file (see `make-post-index.sh`).
#for post in json("post-index.json") [
  #let post-label = label(post.first().trim("./posts/", at: start).trim(".typ", at: end))
  #let (title, date, description) = post.at(1)
  == #link(post-label)[> #title]

  #time(eval(date))

  #description

]

// == #link("https://google.com")[> Updating my {Website, Emulators, Life}]
