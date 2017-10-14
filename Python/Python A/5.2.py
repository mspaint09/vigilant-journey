mystr = "banana"
vowels = "aeiouAEIOU"

def count_vowels(mystr):
    index = 0
    count = 0
    total = "Total vowels: " 
    while index < len(mystr):
        c = mystr[index]
        if c in vowels:
            for x in c:
                print c,
            count = count + 1
        index = index + 1
    print("\n")
    print(total)
    print(count)
