# ereandel

![print](https://github.com/blmayer/ereandel/blob/main/ereandel.png?raw=true)
> A Gemini web browser using shell script


## Installing

There is an AUR package for archlinux users:

[![ereandel](https://img.shields.io/aur/version/ereandel?label=ereandel&logo=arch-linux)](https://aur.archlinux.org/packages/ereandel)
[![ereandel-git](https://img.shields.io/aur/version/ereandel-git?label=ereandel-git&logo=arch-linux)](https://aur.archlinux.org/packages/ereandel-git)

You can also move the file *ereandel* to a folder in your PATH variable, 
or run `make install`, by default it will be installed into *~/.local/bin*.
Use *PREFIX* to override the install location, e.g.




## Using

Start browsing by running ereandel with an optional URL:

`ereandel gemini://rawtext.club:1965/~sloum/spacewalk.gmi`

you can omit the protocol and port:

`ereandel rawtext.club/~sloum/spacewalk.gmi`

no arguments takes you to *gemini.circumlunar.space*:

`ereandel`

### Client certificates

ereandel can work with client certificates if capsules requires them for authentication.

ereandel allows a single client certificate per (sub)domain identified by it's name. If a client cert for a specific domain is available ereandel will send it to the server with every request.

When a resource requires a client cert and ereandel can't find one it will show you a command to create a client cert for the capsule. The certificates are stored in `~/.config/ereandel/certs/`.

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

You can setup a config file at `~/.config/ereandel/ereandel.conf` to configure *ereandel* the way you like.

The file uses a simple `key=value` style, see the complete example for the default values below.

**hints:**
* `ereandel` will be appended to `cachehome`, the directory must be writable for your user.
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
