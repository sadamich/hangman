def convert(string):
    try:
        return float(string)
    except ValueError:
        print("Could not convert teh string to a float.")
c = convert("55")
print(c)



d = convert("stars")
print(d)
