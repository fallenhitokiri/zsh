if [ $UID -eq 0 ]; then LOGINCOLOR="red"; else LOGINCOLOR="blue"; fi

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

PROMPT='%{${fg[blue]}%}[%{$reset_color%}%m%{${fg[blue]}%}]%{$reset_color%} %{${fg[magenta]}%}%B%3~%b %{$reset_color%}%{${fg[$LOGINCOLOR]}%}»%{$reset_color%} '

RPROMPT='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}(%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[blue]%}) %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[magenta]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[magenta]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

