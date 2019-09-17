# if running bash
if [ -n "$BASH_VERSION" ]; then
       # include .bashrc if it exists
          if [ -f "$HOME/.bashrc" ]; then
                 . "$HOME/.bashrc"
                    fi  
                fi
# Git configuration
# Branch name in prompt
source ~/.git-prompt.sh
PS1='[\W$(__git_ps1 " (%s)")]\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}\007"'
# Tab completion for branch names
source ~/.git-completion.bash
