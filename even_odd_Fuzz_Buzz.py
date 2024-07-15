def even_odd():
    n = input("Please type a number;")
    n = int(n)
    if n % 2==0:
        print("Even")
    elif n % 3==0 and n % 5==0:
        print("FuzzBuzz")
    elif n % 3==0:
        print("Fuzz")
    elif n % 5==0:
        print("Buzz")
    else:
        print("Odd")
    
