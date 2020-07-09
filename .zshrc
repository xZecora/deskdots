########################################################
########################################################
########███████╗███████╗██╗  ██╗██████╗  ██████╗########
########╚══███╔╝██╔════╝██║  ██║██╔══██╗██╔════╝########
########  ███╔╝ ███████╗███████║██████╔╝██║     ########
######## ███╔╝  ╚════██║██╔══██║██╔══██╗██║     ########
########███████╗███████║██║  ██║██║  ██║╚██████╗########
########╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝########
########################################################
########################################################
if [ "$(echo $TMUX)" != "" ]
then
    autoload -U colors && colors 
    PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}%% %b"
elif [ "$(tty | grep tty)" = "" ]
then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
    ZSH_THEME="powerlevel10k/powerlevel10k"
    [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
else
    autoload -U colors && colors 
    PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}%% %b"
fi

export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH

export ZSH="/home/xzecora/.config/oh-my-zsh"
 
HYPHEN_INSENSITIVE="true"

export UPDATE_ZSH_DAYS=1

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias randombg="setbg ~/Documents/Wallpapers/"
alias bspwmrc="vim ~/.config/bspwm/bspwmrc"
alias sxhkdrc="vim ~/.config/sxhkd/sxhkdrc"
alias polybarconf="vim ~/.config/polybar/config"
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias xbps="sudo xbps-install"
alias vis="cli-visualizer"
alias ls="exa -als type"

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/.zsh_history
