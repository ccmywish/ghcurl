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

Things can be easier. We consider these as popular binaries:  https://github.com/ibraheemdev/modern-unix
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
