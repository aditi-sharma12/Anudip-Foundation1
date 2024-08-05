# problem 2
# find out the greatest number between 4 number

# input 1
num1 = int(input("Enter a number 1: "))
# input 2
num2 = int(input("Enter a number 2: "))
# input 3
num3 = int(input("Enter a number 3: "))
# input 4
num4 = int(input("Enter a number 4: "))


# method 1
if num1 > num2 :
    if num1 > num3 :
        if num1 >= num4 :
            print(num1)
        else:
            print(num4)
    else:
        print(num3)
else:
    if num2 > num3 :
        if num2 > num4 :
            print(num2)
        elif num4 >= num2 :
            print(num4)
    else:
        print(num3)
        
       
# method 2
list = [num1, num2, num3, num4]
max = list[0]
for i in list:
    if i >= max:
        max = i
print(max)

# method 3
if num1 == num2 and num1 == num3 and num1 == num4:
    print(num1)
elif num1 >= num2 and num1 >= num3 and num1 >= num4:
    print(num1)
elif num2 >= num1 and num2 >= num3 and num2 >= num4:
    print(num2)
elif num3 >= num1 and num3 >= num2 and num3 >= num4:
    print(num3)
else:
    print(num4)