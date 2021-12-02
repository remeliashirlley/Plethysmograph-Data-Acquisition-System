import serial

arduino_port = "/dev/cu.usbmodem143401" # CHECK SERIAL PORT
baud=1200
fileName="dataset1.csv"

ser=serial.Serial(arduino_port,baud)
print("Connected to Arduino port:" +arduino_port)
file=open(fileName,"a")
print("File has been created")

samples = 100 #how many samples to collect
print_labels = False
line = 0 #start at 0 because our header is 0 (not real data)
while line <= samples:
    # incoming = ser.read(9999)
    # if len(incoming) > 0:
    if print_labels:
        if line==0:
            print("Printing Column Headers")
        else:
            print("Line " + str(line) + ": writing...")
    getData=str(ser.readline()) #display the data to the terminal
    data=getData[0:][:-1] #add the data to the file
    print(data)

    file = open(fileName, "a") #append the data to the file
    file.write(data + "\n") #write data with a newline
    line = line+1

print("Data collection complete!")
#close out the file
# DELETE IF NECESSARY
file.close()
