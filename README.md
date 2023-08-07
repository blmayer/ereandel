# astro

![print](https://github.com/blmayer/astro/blob/main/astro.png?raw=true)
> A Gemini web browser using shell script


## Installing

There is an AUR package for archlinux users:

[![astro](https://img.shields.io/aur/version/astro?label=astro&logo=arch-linux)](https://aur.archlinux.org/packages/astro)
[![astro-git](https://img.shields.io/aur/version/astro-git?label=astro-git&logo=arch-linux)](https://aur.archlinux.org/packages/astro-git)

You can also move the file *astro* to a folder in your PATH variable, 
or run `make install`, by default it will be installed into *~/.local/bin*.
Use *PREFIX* to override the install location, e.g.




## Using

Start browsing by running astro with an optional URL:

`astro gemini://rawtext.club:1965/~sloum/spacewalk.gmi`

you can omit the protocol and port:

`astro rawtext.club/~sloum/spacewalk.gmi`

no arguments takes you to *gemini.circumlunar.space*:

`astro`

### Client certificates

astro can work with client certificates if capsules requires them for authentication.

astro allows a single client certificate per (sub)domain identified by it's name. If a client cert for a specific domain is available astro will send it to the server with every request.

When a resource requires a client cert and astro can't find one it will show you a command to create a client cert for the capsule. The certificates are stored in `~/.config/astro/certs/`.

To remove a certificate simply delete the `<domain>.crt` and `<domain>.key` files in the directory mentioned above.

### Key bindings

- `b` to go back one page
- `u` go one path segment up
- `o` to open a new URL, you'll be prompted to type it
- `r` to reload the page
- `H` to go to the home page
- `g` to follow a link in the current page, a link will be displayed, and
- `s` to save the page to a file
- `m` to add the current page to bookmarks
- `M` to go to a bookmark
- `K` to delete the bookmark of the current page
- `q` to quit

More coming.

### Configuration

You can setup a config file at `~/.config/astro/astro.conf` to configure *astro* the way you like.

The file uses a simple `key=value` style, see the complete example for the default values below.

**hints:**
* `astro` will be appended to `cachehome`, the directory must be writable for your user.
* The `style-` keys must be ANSI style codes.

```
margin=8
homepage="gemini.circumlunar.space/"
sty_header1='\033[35;7;1m'
sty_header2='\033[35;4;1m'
sty_header3='\033[35;4m'
sty_quote='\033[2;3m  '
sty_linkb='\033[35m'
sty_linkt=' => \033[36;3m '
sty_listb='\033[35;1m  •'
sty_listt='\033[0m'
```

## Meta

This software is a work in progress and may not work as it is intended to.


### Contributing

Please read the [contributing file](CONTRIBUTING.md).


### Further works

- Better history
- Opening files
- Support input


### Inspired by

- [gmi](https://sr.ht/~chambln/gmi/)
- [bollux](https://sr.ht/~acdw/bollux/)


### Packaging

I'm not the maintainer of the AUR packages for this project,
thanks [guzzisti](https://aur.archlinux.org/account/guzzisti) for the contribution.
