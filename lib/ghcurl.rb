# ------------------------------------------------------
# File          : ghcurl.rb
# Authors       : ccmywish <ccmywish@qq.com>
# Created on    : <2022-04-12>
# Last modified : <2022-04-29>
#
# ghcurl:
#
#   This is the lib file.
#
# ------------------------------------------------------

module Ghcurl

  VERSION  = "0.8.0"

end

#
# We consider from this:
#
#   https://github.com/ibraheemdev/modern-unix
#
Ghcurl::DEFAULT_WARES = {

  cli: 'cli/cli',
  gh:  'cli/cli',

  fd:  'sharkdp/fd',
  bat: 'sharkdp/bat',
  hyperfine: 'sharkdp/hyperfine',
  hexyl:     'sharkdp/hexyl',

  exa: 'ogham/exa',
  dog: 'ogham/dog',
  
  lsd:     'Peltoche/lsd',
  delta:   'dandavison/delta',
  dust:    'bootandy/dust',
  duf:     'muesli/duf',
  broot:   'Canop/broot',

  ripgrep: 'BurntSushi/ripgrep',
  rg:      'BurntSushi/ripgrep',
  ag:      'ggreer/the_silver_searcher',
  
  fzf:     'junegunn/fzf',
  fzy:     'jhawthorn/fzy',

  mcfly:   'cantino/mcfly',
  choose:  'theryangeary/choose',
  jq:      'stedolan/jq',
  sd:      'chmln/sd',
  cheat:   'cheat/cheat',
  bottom:  'ClementTsang/bottom',
  glances: 'nicolargo/glances',
  gtop:    'aksakalli/gtop',
  gping:   'orf/gping',
  procs:   'dalance/procs',
  httpie:  'httpie/httpie',
  curlie:  'rs/curlie',
  xh:      'ducaale/xh',
  zoxide:  'ajeetdsouza/zoxide',

  scc:      'boyter/scc',
  rbspy:    'rbspy/rbspy',
  starship: 'starship/starship',

  glow:     'charmbracelet/glow'

}
