#!/bin/bash

JBOSS_PATH=/Users/onorlander/src/release-t3/jboss

function die() {
    echo "ERROR: $1"
    exit 0
}

if [ ! -f $PWD/install/lib/polopoly.jar ]; then
    die "You are not running this from the root of a polopoly installation"
fi

# Jboss 4
#JBOSS_LIBS="\
#concurrent.jar \
#jboss-client.jar \
#jboss-common-client.jar \
#jbossha-client.jar \
#jboss-j2ee.jar \
#jbossmq-client.jar \
#jbosssx-client.jar \
#jboss-system-client.jar \
#jboss-transaction-client.jar \
#jboss-serialization.jar \
#jboss-remoting.jar \
#jmx-client.jar \
#jnp-client.jar \
#"

# Jboss 5
JBOSS_LIBS="\
concurrent.jar \
jboss-client.jar \
jboss-common-core.jar \
jboss-ha-client.jar \
jboss-integration.jar \
jboss-j2se.jar \
jboss-javaee.jar \
jboss-logging-spi.jar \
jboss-messaging-client.jar \
jboss-remoting.jar \
jboss-security-spi.jar \
jboss-serialization.jar \
jboss-system-client.jar \
jbosssx-client.jar \
jmx-client.jar \
jnp-client.jar \
jboss-aop-client.jar \
jboss-mdr.jar \
trove.jar \
javassist.jar \
log4j.jar \
"

ln -s /Users/onorlander/lib/Environment.properties $PWD/custom/config/Environment.properties

for file in $JBOSS_LIBS; do
    if [ ! -f $JBOSS_PATH/client/$file ]; then
        die "Missing file $file"
    fi
    if [ "$file" == "log4j.jar" ]; then
        cp -v $JBOSS_PATH/client/$file $PWD/install/lib
    else
        cp -v $JBOSS_PATH/client/$file $PWD/contrib-archives/container-client-lib
    fi
done

chmod 755 $PWD/bin/polopoly $PWD/ant/bin/ant


#eof
