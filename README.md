<div align="center">

# ghcurl

[![Gem Version](https://badge.fury.io/rb/ghcurl.svg)](https://rubygems.org/gems/ghcurl) 

```bash
gem install ghcurl
```

<br>

Download files and install from Github releases.

</div>

## Usage

Download latest deb/rpm package and install, notice the argument `deb` / `rpm` are just regular expressions.
```bash
ghcurl cli/cli deb -i
ghcurl cli/cli rpm -i
```

Things can be easier.
```bash
# It knows that's sharkdp/fd
ghcurl fd -i
```

Normal download
```bash
# Download latest rbspy-x86_64-unknown-linux-gnu.tar.gz to ~/.cache/ghcurl
ghcurl rbspy/rbspy x86_64.*linux

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
ghcurl dlvhdr/gh-dash linux-amd64 -i gd

# or, like this
ghcurl dlvhdr/gh-dash linux-amd64 -i ~/tmp/bin/gd
```

<br>
