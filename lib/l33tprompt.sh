#!/bin/bash

function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}


#export PS1="$(echo -n -e '\xE2\x94\x8F''\xE2\x94\x81')[\[\e[0;32m\]\t\[\e[0;30m\]][\[\e[0;36m\w\[\e[0;30m] \n$(echo -n -e '\xE2\x94\x97''\xE2\x94\x81')>\$ "
#export PS1="$(echo -n -e '\xE2\x94\x8F''\xE2\x94\x81')[\[\e[0;32m\]\t\[\e[0;30m\]][\[\e[0;36m\w\[\e[0;30m]\n$(echo -n -e '\xE2\x94\xa3''\xE2\x94\x81')\[\e[0;34m\]\`git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'\`\[\e[0;30m\] \n$(echo -n -e '\xE2\x94\x97''\xE2\x94\x81')>\$ "
#export PS1="$(echo -n -e '\xE2\x94\x8F''\xE2\x94\x81')[\[\e[0;32m\]\t\[\e[0;30m\]]\[\e[0;34m\]\`git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'\`\[\e[0;30m\]\n$(echo -n -e '\xE2\x94\xa3''\xE2\x94\x81')[\[\e[0;36m\w\[\e[0;30m]\n$(echo -n -e '\xE2\x94\x97''\xE2\x94\x81')>\$ "

export PS1="$(echo -n -e '\xE2\x94\x8F''\xE2\x94\x81')[\[\e[0;0;32m\]\t\[\e[0;0;0m\]]\[\e[0;0;34m\]\`git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'\`\[\e[0;0;0m\]\n$(echo -n -e '\xE2\x94\xa3''\xE2\x94\x81')[\[\e[0;0;36m\w\[\e[0;0;0m]\n$(echo -n -e '\xE2\x94\x97''\xE2\x94\x81')>\$ "

#eof
