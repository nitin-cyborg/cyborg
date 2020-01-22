def push(stack):
    global max_ele,top
    if(top>=max_ele):
          print("Stack is overflow")
    else:
        x=input("Enter the element")
        stack.append(x)
        top+=1
        display(stack)
def pop(stack):
    global top
    if(top==-1):
          print("Stack is underflow")
    else:
        print("Stack before popping")
        display(stack)
        print("The popped element is ",stack.pop())
        top-=1
        print("Stack after popping")
        display(stack)
def display(stack):
    if(top==-1):
        print("The stack is empty\n\n")
    else:
        print("The elements of stack are\n")
        print(stack)
def default(stack):
    exit()
def main():
    i,ch=0,0
    stack=[]
    global max_ele
    max_ele=int(input("Enter the length of stack"))
    menu={"1":push,"2":pop,"3":display,"4":default}
    while(ch!=4):
        print("\nMenu\n1. Push\n2. Pop\n3. Display\n4. Exit\n")
        ch=input("Enter your choice")
        menu.get(ch)(stack)
top=-1
max_ele=0
main()




def insert(queue):
    global max_ele,rear,front
    if(rear>=max_ele-1):
        print("Queue OverFlow")
    else:
        x=input("Enter the element")
        queue.append(x)
        rear+=1
        display(queue)
def remove(queue):
    global front,rear
    if(front>rear):
        print("Queue UnderFlow")
    else:
        print("Queue before removing")
        display(queue)
        print("The deleted elements is ",queue.pop(0))
        front+=1
        print("Queue after removing")
        display(queue)
def display(queue):
    global front,rear
    if(front>rear):
        print("The queue is empty\n\n")
    else:
        print("The element of queue\n")
        display(queue)
def main():
    i,ch=0,0
    queue=[]
    global max_ele
    max_ele=int(input("Enter the length of queue"))
    menu={"1":insert,"2":remove,"3":display}
    while(ch!=4):
        print("\nMenu\n1. Insert\n2. Remove\n3. Display\n4. Exit\n")
        ch=input("Enter your choice")
        if(ch=='4'):
             break
        else:
             menu.get(ch)(queue)
rear,front=-1,0
max_ele=0
main()
