#!/usr/bin/env bash
brew list --versions > ~/scripts/brewupdate-pre.log
brew list --cask --versions > ~/scripts/brewupdate-casks-pre.log

(set -x; brew update;)
(set -x; brew upgrade;)

(set -x; brew cleanup;)
# (set -x; brew cask cleanup;)
(set -x; brew doctor;)

red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

# casks=( $(brew cask list) )

# for cask in ${casks[@]}
# do
#     version=$(brew cask info $cask | sed -n "s/$cask:\ \(.*\)/\1/p")
#     installed=$(find "/usr/local/Caskroom/$cask" -type d -maxdepth 1 -maxdepth 1 -name "$version")

#     if [[ -z $installed ]]; then
#         echo "${red}${cask}${reset} requires ${red}update${reset}."
#         (set -x; brew cask uninstall $cask --force;)
#         (set -x; brew cask install $cask --force;)
#     else
#         echo "${red}${cask}${reset} is ${green}up-to-date${reset}."
#     fi
# done

osascript -e "display notification with title \"brew updated\""


# If Java 10 still doesn't work for wct, go back to 9: brew cask install Caskroom/versions/java9-beta