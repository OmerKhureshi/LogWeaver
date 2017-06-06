# LogWeaver

Use this library to generate call trace log file for a java class. These log files can be used with the [Call Stack Visualization tool](https://github.com/omersalar/CSVFull) to view a visualization of the call trace.

### How to generate log file?
1. Download or clone this reporsitory.
2. Place the java file (for which you want the log file to be generated) in `LogWeaver/src/test` directory. The java class should have `package test;` as the package. 
3. Run execute.sh with the java file name as an argument prefixed with `test/`
  
    For example, if you want to generate the log files for a file named QuickSort.java, place it in `LogWeaver/src/test directory` and     execute the following command from LogWeaver directory
 
   `bash execute.sh test/QuickSort`

4. The log files are generated in your home directory.

### Sample files.
Four examples are provided in the repository. Execute the commands below to generate log files for each sample. Note that each time you execute the command, two log files are generated, namely Call Trace and Method Definition log files. The log files are generated in the home directory.

`bash execute.sh test/QuickSort`

`bash execute.sh test/ThreadExampleOne`

`bash execute.sh test/ThreadExampleTwo`

`bash execute.sh test/ThreadExampleThree`
