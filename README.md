# ghcurl

Download files (and install) from Github releases.

## Installation

```bash
gem install ghcurl
```

## Usage

```bash
# Download latest timeleft to ~/.cache/ghcurl
ghcurl BetaPictoris/timeleft timeleft

# Download timeleft version 1.1.0
ghcurl BetaPictoris/timeleft timeleft -v1.1.0

# Download and install it
ghcurl BetaPictoris/timeleft timeleft -i 

# Download and install it to a path you like
ghcurl BetaPictoris/timeleft timeleft -i ~/.local/bin
```
