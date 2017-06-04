# LogWeaver

Use this library to generate call trace log file for a java class. These log files can be used with the [Call Stack Visualization tool](https://github.com/omersalar/CSVFull) to view a visualization of the call trace.

### How to generate log file?
1. Download or clone this reporsitory.
2. Place the java file in LogWeaver/src/test directory.
3. Run the execute.sh with the java file name as an argument prefixed with `test/`
  
  For example, if you you want to generate log file for a file named QuickSort.java, place it in `LogWeaver/src/test directory` and execute the following command from LogWeaver directory
 
 `bash execute.sh test/QuickSort`
