#!/bin/bash

JBOSS_PATH=/opt/jboss/

function die() {
    echo "ERROR: $1"
    exit 0
}

if [ ! -f $PWD/install/lib/polopoly.jar ]; then
    die "You are not running this from the root of a polopoly installation"
fi

JBOSS_LIBS="\
concurrent.jar \
jboss-client.jar \
jboss-common-client.jar \
jbossha-client.jar \
jboss-j2ee.jar \
jbossmq-client.jar \
jbosssx-client.jar \
jboss-system-client.jar \
jboss-transaction-client.jar \
jboss-serialization.jar \
jboss-remoting.jar \
jmx-client.jar \
jnp-client.jar \
"

ln -s /Users/onorlander/lib/Environment.properties $PWD/custom/config/Environment.properties

for file in $JBOSS_LIBS; do
    if [ ! -f $JBOSS_PATH/client/$file ]; then
        die "Missing file $file"
    fi
    cp -v $JBOSS_PATH/client/$file $PWD/contrib-archives/container-client-lib
done

chmod 755 $PWD/bin/polopoly $PWD/ant/bin/ant


#eof
