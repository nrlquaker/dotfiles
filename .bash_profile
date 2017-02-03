export EDITOR='vim'
export HISTSIZE=‘100’
export HISTFILESIZE="${HISTSIZE}"

export PATH="~/Library/Android/sdk/platform-tools:$PATH"

alias cleariconcache='sudo find /private/var/folders/ -name com.apple.dock.iconcache -exec rm {} \;'

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.shell_prompt.sh ]; then
  . ~/.shell_prompt.sh
fi

if [ -f ~/.bash_profile_work ]; then
  . ~/.bash_profile_work
fi

