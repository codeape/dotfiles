export SYSTEM_TEST_PLUGINS_DEPS=com.polopoly.extensions:google-docs-plugin:local/pom.xml,com.polopoly.extensions:google-docs-plugin:local/pom.xml:contentdata,com.polopoly.test.nitro-dist:config-google-docs-plugin:local/pom.xml,com.atex.plugins:carousel-plugin:1.0:contentdata,com.atex.plugins:gui-language-sv-plugin:10.4.1:contentdata,com.atex.plugins:gui-language-sv-plugin:10.4.1:activate-contentdata,com.polopoly.test.nitro-dist:ws-adapter-test-plugin:local/pom.xml,com.polopoly.test.nitro-dist:ws-adapter-test-plugin:local/pom.xml:contentdata
export SYSTEM_TEST_PLUGINS_MANG=com.polopoly:polopoly:local/pom.xml,com.polopoly.extensions:cm-velocity-integration:local/pom.xml,com.polopoly:polopoly:local/pom.xml,com.polopoly.extensions:cm-velocity-integration:local/pom.xml
export JOB_NAME=TA2_Minutely_nitro-webapps-adapter-tomcat-jboss5-mysql

alias nitro_myrun='./nitro.py --polopolyDir /Users/onorlander/src/git/polopoly -d -k -m nitro-tests'

#eof