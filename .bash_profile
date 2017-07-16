export EDITOR='vim'
export HISTSIZE=‘100’
export HISTFILESIZE="${HISTSIZE}"
export HOMEBREW_NO_ANALYTICS=1

export PATH="/Users/$insert.username$/Library/Android/sdk/platform-tools:$PATH"

alias cleariconcache='sudo find /private/var/folders/ -name com.apple.dock.iconcache -exec rm {} \;'

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash
fi

if [ -f ~/.shell_prompt.sh ]; then
  . ~/.shell_prompt.sh
fi

if [ -f ~/.bash_profile_work ]; then
  . ~/.bash_profile_work
fi
