#!/bin/bash
#***************************************
#Logger Library:
#***************************************
# compile all java files in logger folder.
cd logger/
find . -type f -iname "*.java" > sources.txt
javac -classpath lib/aspectjrt.jar:lib/aspectjtools.jar @sources.txt -d classes

# build jar
cd classes/
jar -cvf loggerlib.jar *

# replace the new jar in lib directory.
cp loggerlib.jar ../../lib/

#***************************************
#Generate log files
#***************************************
cd ../../

# compile and run
find src/ -type f -iname "*.java" > sources.txt

javac -classpath lib/aspectjrt.jar:lib/aspectjtools.jar:lib/loggerlib.jar -g -d ./classes @sources.txt

java -cp lib/aspectjrt.jar:lib/aspectjtools.jar:lib/loggerlib.jar  org.aspectj.tools.ajc.Main -source 1.5 -inpath ./classes -aspectpath ./src/ -d ./target

java -cp lib/aspectjrt.jar:lib/aspectjtools.jar:lib/loggerlib.jar:./target $1


