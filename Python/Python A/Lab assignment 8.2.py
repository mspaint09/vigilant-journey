from string import punctuation, whitespace

book = 'GoldenAge.txt'

with open(book, 'r') as fd:
    words = fd.read().split()

def clean(word):
    cleansed = ''
    for char in word:
        if ((char in punctuation) or (char in whitespace)):
            pass
        else:
            cleansed += char.lower()
        return cleansed

from collections import defaultdict
##
word_counts = defaultdict(int)
##
for w in open(book).read().split():
    word_counts[w.lower()] += 1
##
##for w, c in word_counts.iteritems():
##    print w, "occurs", word_counts[w], "times"
