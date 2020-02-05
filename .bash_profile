export LANG='en_US.UTF-8'
export EDITOR='vim'
export PAGER='less'
export HISTSIZE=100
export HISTFILESIZE="${HISTSIZE}"

export GREP_COLOR='36' # cyan
export GREP_OPTIONS='--color=auto'

export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_GITHUB_API=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_INSTALL_CLEANUP=1

export GPG_TTY=$(tty)

export PATH="/usr/local/opt/ruby/bin:/Users/vasyl.ustynov/Library/Android/sdk/platform-tools:$PATH"

alias bandcamp-dl="bandcamp-dl --full-album --embed-lyrics --no-slugify --base-dir='/Users/vasyl.ustynov/Downloads'"
alias ls='ls -F'

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash
fi

if [ -f ~/.promptline.sh ]; then
  . ~/.promptline.sh
fi
