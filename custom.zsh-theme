PROMPT='%{$FG[229]%}➜ %{$fg_bold[green]%} %{$FG[099]%}%c %{$fg_bold[white]%}$(git_prompt_info)%{$fg_bold[white]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$FG[229]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[white]%}) %{$FG[099]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[white]%})"
