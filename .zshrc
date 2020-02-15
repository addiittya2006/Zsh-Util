export ZSH="/home/addiittya/.oh-my-zsh"

ZSH_THEME="aditya"

CASE_SENSITIVE="true"

DISABLE_AUTO_UPDATE="true"

DISABLE_AUTO_TITLE="true"

plugins=(git batterywsl)

if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

. $ZSH/oh-my-zsh.sh
