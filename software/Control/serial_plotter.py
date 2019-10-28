import serial

counter = 0

with serial.Serial('COM6', 115200, timeout=1) as ser:
    line = []

    while True:
        for c in ser.read():
            line.append(c)
            counter += 1

            if counter >= 2:
                print(str(line))
                line = []
                counter = 0