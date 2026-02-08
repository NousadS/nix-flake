if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

HISTFILE=$HOME/.zshrc.histfile
HISTSIZE=1000
SAVEHIST=1000

zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit

[[ ! -f ~/.p10k.zsh ]] || source $HOME/.p10k.zsh