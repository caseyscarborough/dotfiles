local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user='%{$terminfo[bold]$fg[red]%}%n%{$reset_color%}'
local host='%{$terminfo[bold]$fg[blue]%}%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[green]%} %~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="╭ ${user}@${host} ${current_dir} ${git_branch}
╰ %B$%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"