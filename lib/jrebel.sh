#!/bin/bash

echo "##################################################################"
echo "REMEBER:"
echo "       - You need a rebel.xml in the class path and a licence file"
echo "       - You need a pp-rebel.xml in POLOPOLY_HOME"
echo "##################################################################"
echo ""

export MAVEN_OPTS="$MAVEN_OPTS -Dcom.sun.management.jmxremote.port=3412 -noverify -javaagent:/Applications/eclipse/plugins/org.zeroturnaround.eclipse.embedder_5.0.1.RELEASE-201207191833/jrebel/jrebel.jar"
export POLOPOLY_HOME="/Users/onorlander/src/git/polopoly"
export PPREBEL_PATH="/Users/onorlander/lib/pp-rebel.jar"
export JETTY_OPTS="-DPP_HOME=$POLOPOLY_HOME -Drebel.plugins=$PPREBEL_PATH -Drebel.pp-rebel=true"

alias jrebel_mvn_prun="mvn -Dpolopoly.jetty-scanIntervalSeconds=0 -DscanClasspath=false $JETTY_OPTS p:run"

#eof
