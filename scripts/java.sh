require sdkman.sh

JAVA_VERSION=18
JAVA_VERSION=$(sdk list java | grep -Po "$JAVA_VERSION.*?-open" | xargs | cut -d' ' -f6)

sdk install java 8.0.265-open
sdk install java $JAVA_VERSION
sdk use java $JAVA_VERSION
