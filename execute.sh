#!/bin/bash
#***************************************
#Logger Library:
#***************************************
mkdir -p classes
mkdir -p target
# compile all java files in logger folder.
cd logger/
find . -type f -iname "*.java" > sources.txt
javac -classpath lib/aspectjrt-1.8.10.jar:lib/aspectjtools-1.8.10.jar @sources.txt -d classes

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
find . -type f -name '*.class' -delete

find src/ -type f -iname "*.java" > sources.txt

# compile java classes
javac -classpath "lib/*" -g -d ./classes @sources.txt

#  run the aspectJ main class to instrument source code.
java -noverify -cp lib/aspectjrt-1.8.10.jar:lib/aspectjtools-1.8.10.jar:lib/loggerlib.jar:lib/controlsfx-8.40.12.jar:lib/derby.jar:lib:lib/*:/:. org.aspectj.tools.ajc.Main -source 1.5 -inpath ./classes -aspectpath ./src/ -d ./target

# copy the resources files to target folder.
cp -R resources/* target/

#  Run the instrumented program
java -cp lib:lib/*:./target $1
