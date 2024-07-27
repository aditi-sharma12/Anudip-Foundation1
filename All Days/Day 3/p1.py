# problem 1
# find out the greatest number between 2 number

# input 1
num1 = int(input("Enter a number 1: "))
# input 2
num2 = int(input("Enter a number 2: "))

if num1 > num2:     # if num1 is greater than num2 
    print("The greatest number is", num1)
elif num1 < num2:       # if num1 is less than num2
    print("The greatest number is", num2)
else:       # if num1 is equal to num2
    print("The two numbers are equal")
    
    
# alternative method 
num3 = max(num1, num2)
print ("The greatest number is", num3)