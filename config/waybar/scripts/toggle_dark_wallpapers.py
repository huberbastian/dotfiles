file = open("isDark", "r")
isDark = file.readline()
file.close()

file = open("isDark", "w")
if (isDark == "yes"):
    print("y")
    file.write("no")
else:
    print("n")
    file.write("yes")

file.close()

