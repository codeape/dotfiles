#!/bin/bash

echo "##################################################################"
echo "REMEBER:"
echo "       - You need a rebel.xml in the class path and a licence file"
echo "##################################################################"
echo ""

export MAVEN_OPTS="$MAVEN_OPTS -noverify -javaagent:/Applications/jrebel/jrebel.jar"

#export POLOPOLY_HOME="/Users/onorlander/src/git/polopoly"
#export JETTY_OPTS="-DPP_HOME=$POLOPOLY_HOME"
#alias jrebel_mvn_prun="mvn -Dpolopoly.jetty-scanIntervalSeconds=0 -DscanClasspath=false $JETTY_OPTS p:run"

alias jrebel_mvn_prun="mvn -Dpolopoly.jetty-scanIntervalSeconds=0 -DscanClasspath=false p:run"

#eof
