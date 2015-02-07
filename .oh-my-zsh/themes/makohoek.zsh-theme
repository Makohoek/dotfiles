CLOCK='%D{%I:%M:%S}'
PROMPTSYMBOL='ʐ'
USERNAME='%n'
CURRENTDIRECTORY='%~'


PROMPT=$'$(git_prompt_info) %{$fg[white]%}%{$fg_bold[yellow]%}$CURRENTDIRECTORY%{$reset_color%} %{$fg_bold[blue]%}$PROMPTSYMBOL%{$reset_color%} '


ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}${reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}${reset_color%}"
