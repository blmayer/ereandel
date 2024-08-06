# ereandel

![print](https://github.com/blmayer/ereandel/blob/main/ereandel.png?raw=true)
> A Gemini web browser using shell script


## Installing

Debian and Archlinux have packages that can be installed via their package system,
see the next section if you want.

You can also move the file *ereandel* to a folder in your PATH variable, 
or run `make install`, by default it will be installed into *~/.local/bin*.
Use *PREFIX* to override the install location, e.g.


### Packages

I'm not the maintainer of the distro packages for this project, if you want to package
please go ahead. Currently Ereandel is packaged for:

- Archlinux AUR thanks to [guzzisti](https://aur.archlinux.org/account/guzzisti)
- Debian Sid and testing thanks to [Akash Doppalapudi](mailto:akashdoppalapudi2001@gmail.com)

Packages can be found and installed using your distro's package system.


#### Status

[![ereandel](https://img.shields.io/aur/version/ereandel?label=ereandel&logo=arch-linux)](https://aur.archlinux.org/packages/ereandel)
[![ereandel-git](https://img.shields.io/aur/version/ereandel-git?label=ereandel-git&logo=arch-linux)](https://aur.archlinux.org/packages/ereandel-git)
[![unstable](https://img.shields.io/debian/v/ereandel/unstable?logo=debian&label=debian%20unstable)](https://packages.debian.org/source/unstable/ereandel)
[![testing](https://img.shields.io/debian/v/ereandel/testing?logo=debian&label=debian%20testing)](https://packages.debian.org/source/testing/ereandel)




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


### Further works

- Better history
- Opening files
- Support input


### Contributing

Please read the [contributing file](CONTRIBUTING.md).



### Inspired by

- [gmi](https://sr.ht/~chambln/gmi/)
- [bollux](https://sr.ht/~acdw/bollux/)
