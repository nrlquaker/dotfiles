HISTCONTROL=ignoreboth

export LANG='en_US.UTF-8'
export EDITOR='vim'
export PAGER='less'
export HISTSIZE=100
export HISTFILESIZE="${HISTSIZE}"
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_GITHUB_API=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_UPGRADE_CLEANUP=1
export ICLOUD='/Users/vasyl.ustynov/Library/Mobile Documents/com~apple~CloudDocs'
export GPG_TTY=$(tty)
export PATH="/Users/vasyl.ustynov/Library/Android/sdk/platform-tools:$PATH"

alias bandcamp-dl="bandcamp-dl --full-album --embed-lyrics --no-slugify --base-dir='/Users/vasyl.ustynov/Downloads'"

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash
fi

if [ -f ~/.shell_prompt.sh ]; then
  . ~/.shell_prompt.sh
fi
