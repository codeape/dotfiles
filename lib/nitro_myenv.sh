export SYSTEM_TEST_PLUGINS_DEPS=\
com.atex.plugins:carousel-plugin:2.1:contentdata,\
com.atex.plugins:gui-language-sv-plugin:local-base-snapshot/pom.xml:contentdata,\
com.atex.plugins:gui-language-sv-plugin:local-base-snapshot/pom.xml:activate-contentdata,\
com.atex.plugins:external-image-editor-plugin:1.0.0,\
com.atex.plugins:external-image-editor-plugin:1.0.0:contentdata

export SYSTEM_TEST_PLUGINS_MANG=\
com.polopoly:polopoly:local/pom.xml,\
com.polopoly.extensions:cm-velocity-integration:local/pom.xml,\
com.polopoly:polopoly:local/pom.xml,com.polopoly.extensions:cm-velocity-integration:local/pom.xml,\
com.atex.plugins:external-image-editor-plugin:local/pom.xml

export JOB_NAME=TA2_Minutely_nitro-webapps-adapter-tomcat-jboss5-mysql

alias nitro_myrun='./nitro.py --polopolyDir /Users/onorlander/src/git/polopoly -d -k -m nitro-tests -j /Applications/jrebel/ --jbossDebug --tomcatDebug --tomcatDebugPort 11666'

#eof