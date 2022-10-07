#dfgfg

a = input("Input 3-digit number: ")          #input 3-digit number from keyboard
int_a = int(a)                               #transform string type of input to integer
c1 = int_a % 10                              #gives us the last digit of the initial number
d1 = int_a // 10                             #gives us the first 2 difits of the initial number
c2 = d1 % 10                                 #gives us the last digit of the 2-digit number
d2 = d1 // 10                                #gives us the first digit of the initial number

sum_1 = d2 + c2+ c1                          # returns sum of all digits of the 3-digit number

mir_int_a = int(str(c1) + str(c2) + str(d2)) # returns mirrored number of int_a
abs_1 = abs(int_a - mir_int_a)

print("""Your input is %d, sum of its digits is %d, absolute value of 
subtraction (mirrored number minus your number) is %d.""" %(int_a, sum_1, abs_1))