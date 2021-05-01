export GOPATH=$HOME/projects/go
export GO111MODULE=auto
export GOROOT="$(brew --prefix go@1.15)/libexec"

export PATH="${GOPATH}/bin:${GOROOT}/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="${HOME}/.poetry/bin:$PATH"

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

alias ga="git add"
alias gl="git log"
alias gc="git commit"
alias gcin="git cin"
alias gs="git status"
alias gf="git fetch"
alias gclean="git restore . && git restore --staged . && git clean -fd"
alias tmux="tmux -2"
alias bs="byteshell"

# set -o vi

export JAVA_HOME="/usr/libexec/java_home -v11"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi

# tmux 默认启动选项
if command -v tmux &> /dev/null && [ -z $__INTELLIJ_COMMAND_HISTFILE__ ] && [ -z "$TMUX" ]; then
  tmux attach -t default || tmux new -s default \; \
  split-window -v \; \
  split-window -h "ipython" \; \
  select-pane -t 0 \; \
  split-window -h \; \
  select-pane -t 0 \;
fi

