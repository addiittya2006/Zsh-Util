ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

function get_pwd() {
  echo "${PWD/$HOME/~}"
}

function put_spacing() {

local bat=$(battery_level_gauge)

local termwidth
(( termwidth = ${COLUMNS} - ${#USERNAME} - ${#HOST} - ${#$(get_pwd)} - ${#bat} ))

local spacing=""
for i in {1..$termwidth}; do
    spacing="${spacing} "
done

echo $spacing
 
}

PROMPT='
%{$fg[magenta]%}%n@%m%{$reset_color%} in %{$fg[yellow]%}$(get_pwd)%{$reset_color%} at %{$fg[cyan]%}%T%{$reset_color%}$(put_spacing)$(battery_level_gauge)
$(git_prompt_info)$reset_color> '