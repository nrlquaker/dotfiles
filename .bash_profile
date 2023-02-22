export LANG='en_US.UTF-8'
export EDITOR='vim'
export PAGER='less'
export HISTSIZE=100
export HISTFILESIZE="${HISTSIZE}"

export GREP_COLOR='36' # cyan
export GREP_OPTIONS='--color=auto'

export BASH_SILENCE_DEPRECATION_WARNING=1

export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_GITHUB_API=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_INSTALL_CLEANUP=1

export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home/"

export GPG_TTY=$(tty)

export PATH="/usr/local/opt/ruby/bin:/$HOME/Library/Android/sdk/platform-tools:$PATH"

alias bandcamp-dl="bandcamp-dl --full-album --embed-lyrics --no-slugify --base-dir=$HOME/Downloads"
alias ls='ls -F'
alias myip='curl ipecho.net/plain ; echo'

eval "$(/opt/homebrew/bin/brew shellenv)"

if type brew &>/dev/null
then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  fi
  for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
  do
    [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
  done
fi

if [ -f ~/.promptline.sh ]; then
  . ~/.promptline.sh
fi
