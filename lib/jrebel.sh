#!/bin/bash

echo "##################################################################"
echo "REMEBER:"
echo "       - You need a rebel.xml in the class path and a licence file"
echo "##################################################################"
echo ""

export MAVEN_OPTS="$MAVEN_OPTS -Dcom.sun.management.jmxremote.port=3412 -noverify -javaagent:/Applications/eclipse/plugins/org.zeroturnaround.eclipse.embedder_5.0.1.RELEASE-201207191833/jrebel/jrebel.jar"
export POLOPOLY_HOME="/Users/onorlander/src/git/polopoly"
export JETTY_OPTS="-DPP_HOME=$POLOPOLY_HOME"

alias jrebel_mvn_prun="mvn -Dpolopoly.jetty-scanIntervalSeconds=0 -DscanClasspath=false $JETTY_OPTS p:run"

#eof
