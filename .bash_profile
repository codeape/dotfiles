#!/bin/bash

PATH=${PATH/\/usr\/local\/bin:}
export PATH=$HOME/bin:/usr/local/bin:$HOME/src/git/ghar/bin:$PATH

export CLICOLOR=1

export LESSCHARSET="UTF-8"
export CHARSET="UTF-8"
export LANG="sv_SE"
export LC_ALL="sv_SE"

export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_07.jdk/Contents/Home
#export JRE_HOME=
#export ANT_OPTS=-Xmx768m
export MAVEN_OPTS="-Xmx1536m -XX:MaxPermSize=1024m -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=3412 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false"
export MAVEN_OPTS="-Xmx1536m -XX:MaxPermSize=1024m -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false"

if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

alias l33tprompt='source $HOME/lib/l33tprompt.sh'
alias normalprompt='export PS1="\h:\W \u\$"'
alias jrebel='source $HOME/lib/jrebel.sh'
alias vim='mvim -v'
alias mbeans_jboss='export JAVA_OPTS="$JAVA_OPTS -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false"'
alias debug_jboss='export JAVA_OPTS="-Xdebug -Xrunjdwp:transport=dt_socket,address=8787,server=y,suspend=y $JAVA_OPTS"'
alias nitro_myenv='source $HOME/lib/nitro_myenv.sh'

source $HOME/lib/l33tprompt.sh

#eof