<div align="center">

# ghcurl

[![Gem Version](https://badge.fury.io/rb/ghcurl.svg)](https://rubygems.org/gems/ghcurl) 

```bash
gem install ghcurl
```

<br>

Download files and install from Github releases.

</div>

`ghcurl` can recognize your OS and arch, give you the proper option to download. You can search by regular expression, specify a version, and install it to a path or according to the environment variable `GHCURL_BIN_PATH` or just `/usr/local/bin`. It will automatically extract a tar/zip file to make the installation process better.

Note it doesn't work on Windows.

## Usage

Things can be easier. We consider these as popular binaries:  https://github.com/ibraheemdev/modern-unix

Notice: `-i` means to install.

```bash
# It knows that's sharkdp/fd
ghcurl fd -i

# Much easier to install rbspy!
ghcurl rbspy -i

# On Linux, it's very handy
ghcurl cli -i
```

Download latest deb/rpm package and install, notice the argument `deb` / `rpm` are just regular expressions.
```bash
ghcurl cli/cli deb -i
ghcurl cli/cli rpm -i
```

Normal download
```bash
# Download latest rbspy-x86_64-unknown-linux-gnu.tar.gz to ~/.cache/ghcurl
ghcurl rbspy/rbspy 'x86_64.*linux'

# Download rbspy version 0.11.1 
ghcurl rbspy/rbspy 'x86_64.*linux' -v0.11.1
```

Download a binary and install it to anywhere
```bash
# Install to /usr/local/bin
ghcurl BetaPictoris/timeleft timeleft -i 

# Install to ~/tmp/bin
ghcurl BetaPictoris/timeleft timeleft -i ~/tmp/bin

# Install and rename it to, here, 'gd' in /usr/local/bin
ghcurl dlvhdr/gh-dash linux-amd64 -i -r 'gd'

# or, like this
ghcurl dlvhdr/gh-dash linux-amd64 -i ~/tmp/bin/gd
```

<br>
