## Signal Acquisition and Post Processing in Matlab<br /> 

Arduino board is used to convert plethysmograph data from analog to digital and send it to the computer for visualization.
Matlab is then used as a tool for building the interface between the ADC and the computer, and to control the access to the (virtual) COM port. 
The data read from COM port is further processed and analyzed to get the clinical data of the test-subject. 
The acquired samples of the PPG signal are filtered if required.<br /> <br /> 

## Enhancement: Data logging software using Arduino, Python and VBA<br /> 
Plethysmograph signal and time is read from Arduino port by Python script. 
Python script is used to interface between Arduino and VBA. <br /> 

> Python script performs the following actions:
> - Creates empty CSV file
> - Takes a total of 500 samples
> - Appends data into CSV file

VBA is used as a medium to store data and allow visualisation of the recorded data in Excel<br /> 

> VBA macros perform the following actions:<br /> 
- Module1 automatically creates new sheet based on date and time<br /> 
- Module2 iterates through the data to remove anomalies<br /> 
- Module3 plots the processed data as a chart for visualization<br /> 
- Module4 calculates average heart by using the signal peaks as reference<br /> 
