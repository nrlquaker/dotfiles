#!/bin/bash

source ./ora.sh/ora.sh

readonly PACKAGES="create-dmg dts-gen"

type_exists() {
  if [ $(type -P $1) ]; then
    return 0
  fi
  return 1
}

npm_i() {
  if type_exists 'npm'; then
    npm install $1 --global --quiet
  else
    printf "Error: npm not found."
    exit
  fi
}

task() {
  sleep 2
  npm_i "$PACKAGES"
}


main() {
  stty -echo && tput civis
  spinner "Installing Node.js packages..." task output
  tput el

  echo "$output"
  tput cnorm && stty echo
}

main
