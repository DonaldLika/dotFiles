#!/bin/bash

# Helper function to switch java version to 8
j8(){
sudo update-java-alternatives -s java-8-openjdk-amd64
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/
export PATH=$PATH:$JAVA_HOME
echo 'You switched to Java 8'
}

# Helper function to switch java version to 11
j11(){
sudo update-java-alternatives -s java-11-oracle
export JAVA_HOME=/usr/lib/jvm/java-11-oracle/
export PATH=$PATH:$JAVA_HOME
echo 'You switched to Java 11'
}