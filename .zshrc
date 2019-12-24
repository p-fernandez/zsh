[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -Uz compinit && compinit

setopt NO_CASE_GLOB
setopt AUTO_CD

HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
SAVEHIST=5000
HISTSIZE=2000
setopt EXTENDED_HISTORY
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt INC_APPEND_HISTORY
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST 
# do not store duplications
setopt HIST_IGNORE_DUPS
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS

export CLICOLOR=1

: ${emoji:='💀'}
: ${separator:=''}

bold="%B"
reset="%b%k%f"

colorBlackBack="%K{black}"
colorBlackFore="%F{black}"
colorBlueBack="%K{blue}"
colorBlueFore="%F{blue}"
colorWhiteBack="%K{white}"
colorWhiteFore="%F{white}"

foregroundColor="${colorBlackFore}"
backgroundColor="${colorBlackBack}"
emojiStyle="${foregroundColor}${backgroundColor}"
foregroundColor="${colorBlackFore}"
backgroundColor="${colorBlueBack}"
firstHandStyle="${foregroundColor}${backgroundColor}"
foregroundColor="${colorWhiteFore}"
backgroundColor="${colorBlueBack}"
text="${foregroundColor}${backgroundColor}"
foregroundColor="${colorBlueFore}"
backgroundColor="${colorBlackBack}"
secondHandStyle="${foregroundColor}${backgroundColor}"
prompt="%~"

PROMPT="${reset}${emojiStyle}  ${emoji}  ${reset}${firstHandStyle}${separator} ${bold}${text}${prompt} ${reset}${secondHandStyle}${separator}${reset} "

source ~/.git-prompt.sh
source ~/.git-completion.sh
source ~/.oh-my-git/prompt.sh

export LC_ALL=en_GB.UTF-8
