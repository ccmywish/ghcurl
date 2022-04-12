<div align="center">

# ghcurl

[![Gem Version](https://badge.fury.io/rb/ghcurl.svg)](https://rubygems.org/gems/ghcurl) 

```bash
gem install ghcurl
```

<br>

Download files (and install) from Github releases.

</div>

## Usage

```bash
# Download latest timeleft to ~/.cache/ghcurl
ghcurl BetaPictoris/timeleft timeleft

# Download timeleft version 1.1.0
ghcurl BetaPictoris/timeleft timeleft -v1.1.0


# Download deb/rpm and install it
ghcurl cli/cli gh_2.7.0_linux_amd64.deb -i
ghcurl cli/cli gh_2.7.0_linux_amd64.rpm -i


# Download a binary and install it
ghcurl BetaPictoris/timeleft timeleft -i 

# Download and install it to a path you like
ghcurl BetaPictoris/timeleft timeleft -i ~/tmp/bin

# Install and rename it to what you like, here, to 'gd'
ghcurl dlvhdr/gh-dash linux-amd64 -i gd

# or, like this
ghcurl dlvhdr/gh-dash linux-amd64 -i ~/tmp/bin/gd
```
