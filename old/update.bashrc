# added by duckpan installer
# eval $(perl -I/home/cristian/perl5/lib/perl5 -Mlocal::lib)

# zsh
# alias vim="stty stop '' -ixoff ; vim"
# `Frozing' tty, so after any command terminal settings will be restored
# ttyctl -f

# bash
vim()
{
  local STTYOPTS="$(stty --save)"
  stty stop '' -ixoff
  command vim "$@"
  stty "$STTYOPTS"
}
