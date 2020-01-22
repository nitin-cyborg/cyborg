n1=int(input("Enter number of rows"))
m1=int(input("Enter number of columns"))
print("Enter the elements of matrix1")
x = [[int(input()) for j in range(n1)] for i in range(m1)]
for r in x:
    print(r)
n2=int(input("Enter number of rows"))
m2=int(input("Enter number of columns"))
print("Enter the elements of matrix2")
y = [[int(input()) for j in range(n2)] for i in range(m2)]
for r in y:
    print(r)
print("Multiplication of two matrices")
result = [[sum(a*b for a,b in zip(X_row,Y_col)) for Y_col in zip(*y)] for X_row in x]
for r in result:
    print(r)
    
    
    
    
    import math
a=float(input("enter the value of a="))
b=float(input("enter the value of b="))
c=float(input("enter the value of c="))
d=b**2-4*a*c
if d<0:
    print("this equation has no real solution")
elif d==0:
    x=(-b+math.sqrt(d))/2*a
    print("This equation has one solution:",x)
else:
    x1=(-b+math.sqrt(d))/2*a
    x2=(-b-math.sqrt(d))/2*a
    print("This equation has two solutions:",x1,"and",x2)
