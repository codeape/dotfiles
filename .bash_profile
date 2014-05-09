#!/bin/bash

PATH=${PATH/\/usr\/local\/bin:}
export PATH=$HOME/bin:/usr/local/bin:$HOME/src/git/ghar/bin:$PATH

export CLICOLOR=1

export LESSCHARSET="UTF-8"
export CHARSET="UTF-8"
export LANG="sv_SE.UTF-8"
export LC_ALL="sv_SE.UTF-8"

#export JAVA_HOME=$(/usr/libexec/java_home)
#export JAVA_HOME=/Library/Java/Home/
#export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home

#export MAVEN_OPTS="-Xmx1536m -XX:MaxPermSize=1024m -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=3412 -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false"
export MAVEN_OPTS="-Xmx1536m -XX:MaxPermSize=1024m -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -Djava.net.preferIPv4Stack=true"

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
alias play_env='export PATH=$HOME/lib/play-2.1.1:$PATH'
alias cloud_route='sudo /sbin/route add -net 192.168.100.0 -netmask 255.255.255.0 172.31.252.100'
alias polopoly-cli='java -jar /Users/onorlander/src/git/polopoly/test/nitro-dist-test-project/target/dist/deployment-config/polopoly-cli.jar'
source $HOME/lib/l33tprompt.sh

#eof
