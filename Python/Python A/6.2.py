def count_vowels(mystr):
    if not mystr:
        return 0
    if mystr[0] in 'aeiouAEIOU':
        for x in mystr[0]:
            print mystr[0]
    return 'aeiouAEIOU'.count(mystr[0]) + count_vowels(mystr[1:])
