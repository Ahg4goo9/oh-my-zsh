# the svn plugin has to be activated for this to work.
# the battery plugin has to be activated for this to work.

local user='%{$fg[magenta]%}%n@%{$fg[magenta]%}%m%{$reset_color%}'
local pwd='%{$fg[cyan]%}${PWD/#$HOME/~}%{$reset_color%}'
local git='%{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%}'
local svn='%{$fg_bold[blue]%}$(svn_prompt_info)%{$reset_color%}'
local battery='$(battery_pct_prompt)%{$reset_color%}'

PROMPT="${user} ${pwd} ${git}${svn}%{$reset_color%}"
RPROMPT="${battery}%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%})%{$fg[yellow]%} ✗ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) "

ZSH_PROMPT_BASE_COLOR="%{$fg_bold[blue]%}"
ZSH_THEME_REPO_NAME_COLOR="%{$fg_bold[red]%}"

ZSH_THEME_SVN_PROMPT_PREFIX="svn:("
ZSH_THEME_SVN_PROMPT_SUFFIX=")"
ZSH_THEME_SVN_PROMPT_DIRTY="%{$fg[red]%} ✘ %{$reset_color%}"
ZSH_THEME_SVN_PROMPT_CLEAN=" "
