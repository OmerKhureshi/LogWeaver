# LogWeaver

Use this library to generate call trace log file for a java class. These log files can be used with the [Call Stack Visualization tool](https://github.com/omersalar/CSVFull) to view a visualization of the call trace.

### How to generate log file?
1. Download or clone this reporsitory.
2. Place the java file (for which you want the log file to be generated) in `LogWeaver/src` directory.
3. Place all the dependency jars in `LogWeaver/lib` directory.
4. Run execute.sh with the java file name as an argument prefixed with the package name.
  
    For example, if you want to generate the log files for a file named test.java which has its package defined as `com.example`, place it in `LogWeaver/src directory` and execute the following command from LogWeaver directory,
 
   `bash execute.sh com.example.test`

5. The log files are generated in your home directory.

### Sample files.
Four examples are provided in the repository under `src/samples` directory. Execute the commands below to generate log files for each sample. Note that each time you execute the command, two log files are generated, namely Call Trace and Method Definition log files. The log files are generated in the home directory.

`bash execute.sh samples.QuickSort`

`bash execute.sh samples.com.ThreadExampleOne`

`bash execute.sh samples.com.ThreadExampleTwo`

`bash execute.sh samples.com.ThreadExampleThree`
