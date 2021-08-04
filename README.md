# astro

> A Gemini web browser using shell script

![print](https://github.com/blmayer/astro/blob/main/astro.png?raw=true)


## Installing

Move the file *astro* to a folder in your PATH variable, or
run `make`, by default it will be installed into *~/.local/bin*.
Use *PREFIX* to override the install location.


## Using

Start browsing by running astro with an optional URL:

`astro gemini://rawtext.club:1965/~sloum/spacewalk.gmi`

you can omit the protocol and port:

`astro rawtext.club/~sloum/spacewalk.gmi`

no arguments takes you to *gemini.circumlunar.space*:

`astro`


### Key bindings

- `b` to go back one page
- `o` to open a new URL, you'll be prompted to type it
- `r` to reload the page
- `H` to go to the home page
- `g` to follow a link in the current page, a link will be displayed, and
- `s` to save the page to a file
- `m` to add the current page to bookmarks
- `M` to go to a bookmark
- `q` to quit

More coming.


## Meta

This software is a work in progress and may not work as it is intended to.


### Further works

- Better history
- Opening files
- Support input


### Inspired by

- [gmi](https://sr.ht/~chambln/gmi/)
- [bollux](https://sr.ht/~acdw/bollux/)

