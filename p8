def checkPan(vals):
    for val in vals:
        if(val<1):
            return False
    return True
chars="abcdefghijklmnopqrstuvwxyz"
alphabet={}
for char in chars:
    alphabet[char]=0
inpStr=input("Please enter the string you wanna check\n")
for c in inpStr.lower():
    if c in chars:
        alphabet[c]+=1
vals=alphabet.values()
check=checkPan(vals)
if(check):
    print("its a pangram")
else:
    print("not pangram")
    
    
    
    
     lower = int(input("enter lower range:"))
upper = int(input("enter upper range:"))
for num in range(lower,upper+1):
    order=len(str(num))
    sum=0
    temp=num
    while temp>0:
        digit=temp%10
        sum+=digit**order
        temp//=10
    if num==sum:
        print(num)
