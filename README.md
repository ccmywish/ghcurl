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

<br>

## How this works?

For future contributers and myself, I'll tell you how to maintain this.

In `ghcurl` previous to `0.3.1`, I write this code piece:
```ruby
unless version  
  # Notice: releases/tag/vx.x.x/download not works!!!
  # This is a link relocation
  url = "https://github.com/#{repo}/releases/latest/download/#{ware}"
else
  # The real download link
  url = "https://github.com/#{repo}/releases/download/v#{version}/#{ware}"
end
```

As you can see, it considers the Github router when you try to install a **latest** one, which are very unreliable, and you should specify a precise name for the thing you want to download. So from `0.4.0` I changed this via a slow but useful method: check the HTML file in the release page, and search the string user request which is not necessarily accurate, to find the download link directly.
