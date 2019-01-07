TODO http://blog.stwrt.ca/2012/10/31/vim-ctags

https://github.com/zsh-users/zsh-autosuggestions

add this to .zshrc

```
export PATH=$PATH:~/vimrc/bin
alias vpnconnect='cd ~ && sudo openvpn --config file.ovpn'
alias r=ranger

export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
bindkey '^ ' autosuggest-accept
```

ctrl+space to select text
