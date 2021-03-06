export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

fpath=($DOTFILES/functions $fpath)

autoload -U $DOTFILES/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS # don't record dupes in history
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE # don't add commands starting with space

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
# https://stackoverflow.com/a/20643204
# setopt complete_aliases

# http://zshwiki.org/home/
# https://stackoverflow.com/questions/18042685/list-of-zsh-bindkey-commands
# http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html#Movement
bindkey '^[^[[D' backward-word # control-left conflicts with spaces
bindkey '^[^[[C' forward-word # control-right conflicts with spaces
bindkey '^[[H' beginning-of-line # home-key
bindkey '^[[F' end-of-line # end-key
bindkey '^[[3~' delete-char # del-key
bindkey '^?' backward-delete-char # backspace-key
