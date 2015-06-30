#!/bin/bash

function parse_git_branch {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="$(echo -n -e '\xE2\x94\x8F''\xE2\x94\x81')[\[\e[32m\]\t\[\e[0m\]]\[\e[34m\]\`git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'\`\[\e[0m\]\n$(echo -n -e '\xE2\x94\xa3''\xE2\x94\x81')[\[\e[36m\w\[\e[0m]\n$(echo -n -e '\xE2\x94\x97''\xE2\x94\x81')>\$ "

alias simpleps='export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\u@\h:\w\$"'

#eof
