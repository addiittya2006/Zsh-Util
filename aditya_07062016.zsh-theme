ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"

function battery_charge() {
    if [ -e /Users/addiittya/Developer/PyCharmProjects/exec/batcharge.py ]
    then
        echo `python /Users/addiittya/Developer/PyCharmProjects/exec/batcharge.py`
    else
        echo '';
    fi
}

function get_pwd() {
  echo "${PWD/$HOME/~}"
}

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function put_spacing() {

local git=$(git_prompt_info)
if [ ${#git} != 0 ]; then
    ((git=${#git} - 10))
else
    git=0
fi

local bat=$(battery_charge)
if [ ${#bat} != 0 ]; then
    ((bat = ${#bat} - 11))
else
    bat=0
fi

local termwidth
# (( termwidth = ${COLUMNS} - 13 - ${#HOST} - ${#$(get_pwd)} - ${bat} - ${git} ))
(( termwidth = ${COLUMNS} - 13 - ${#HOST} - ${#$(get_pwd)} - ${bat} ))


local spacing=""
for i in {1..$termwidth}; do
    spacing="${spacing} "
done

echo $spacing
 
}

PROMPT='
%{$fg[blue]%}%n%{$reset_color%} on %{$fg[yellow]%}%m%{$reset_color%} in $fg[white]$(get_pwd)%{$reset_color%} at %{$fg[cyan]%}%T%{$reset_color%}$(put_spacing)$(battery_charge)
$(git_prompt_info)$reset_color☞ '