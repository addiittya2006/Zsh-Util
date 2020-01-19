export ZSH=/Users/addiittya/.oh-my-zsh

# Set name of the theme to load.
# ZSH_THEME="aditya"

source $ZSH/oh-my-zsh.sh

source ~/.profile

# The next line updates PATH for the Google Cloud SDK for zsh.
source '/Users/addiittya/Developer/google-cloud-sdk/path.zsh.inc'
# The next line enables shell command completion for gcloud for zsh.
source '/Users/addiittya/Developer/google-cloud-sdk/completion.zsh.inc'

bindkey "^[^[[C" forward-word
bindkey "^[^[[D" backward-word

# Oh-My-Zsh suto-update disabled
DISABLE_AUTO_UPDATE="true"

# Oh-My_Zsh disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"
