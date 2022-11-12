<div align="center">

# ghcurl

[![Gem Version](https://badge.fury.io/rb/ghcurl.svg)](https://rubygems.org/gems/ghcurl) 

Download files and install from Github releases. It works on Linux, Windows, macOS and maybe Other OSes.

```bash
gem install ghcurl
```

</div>

`ghcurl` can recognize your OS and arch, give you the proper option to download. You can search by regular expression, specify a version, and install it to a path or according to the environment variable `GHCURL_BIN_PATH` or just `/usr/local/bin`. It will automatically extract a tar/zip file to make the installation process better.

<br>

## Usage

```bash
$ ghcurl [user/]repo [regexp] [options]
```

**-o**

This is optional, download will default to `~/.cache/ghcurl`
1. `-o path` Download into path
2. `-o path/name` Download as path/name

**-v**
1. `-v 1.0.0` Download tag version 1.0.0
2. `-v3.1.4` This is also OK to download tag version 3.1.4

**-i**
1. `-i` Install to `/usr/local/bin` or `GHCURL_BIN_PATH`
2. `-i path` Install to path

**-r**
1. `-r name` Install the binary as name 

<br>

## Example

Things can be easier. We consider these as popular binaries:  https://github.com/ibraheemdev/modern-unix

Notice: `-i` means to install.

```bash
# It knows that's sharkdp/fd
ghcurl fd -i

# It's cli/cli !
ghcurl gh -i

# Much easier to install rbspy!
ghcurl rbspy -i
```

Download latest deb/rpm package and install, notice the argument `deb` / `rpm` are just regular expressions.
```bash
ghcurl cli/cli deb -i
ghcurl cli/cli rpm -i
```

Normal download
```bash
# The easiest way to download
ghcurl gh

# Download to /tmp
ghcurl gh -o /tmp

# Download latest rbspy-x86_64-unknown-linux-gnu.tar.gz to ~/.cache/ghcurl
ghcurl rbspy/rbspy 'x86_64.*linux'

# Download rbspy version 0.11.1 
ghcurl rbspy/rbspy 'x86_64.*linux' -v0.11.1
```

Download a binary and install it to anywhere
```bash
# Install to /usr/local/bin
ghcurl starship linux-gnu -i 

# Install to ~/tmp/bin
ghcurl BetaPictoris/timeleft -i ~/tmp/bin

# Download as /tmp/github-cli and install
ghcurl gh -o /tmp/github-cli -i

# Install and rename it to, here, 'tldr' in /usr/local/bin
ghcurl dbrgn/tealdeer x86_64 -i -r 'tldr'

# or, like this
ghcurl dlvhdr/gh-dash linux-amd64 -i ~/tmp/bin/gd
```

<br>