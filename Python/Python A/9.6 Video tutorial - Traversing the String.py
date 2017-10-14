Python 2.7.13 (v2.7.13:a06454b1afa1, Dec 17 2016, 20:42:59) [MSC v.1500 32 bit (Intel)] on win32
Type "copyright", "credits" or "license()" for more information.
>>> word = "orange"
>>> for char in word:
	print(char)

	
o
r
a
n
g
e
>>> "a" in "banana"
True
>>> "o" in "banana"
False
>>> word1 = "banana"
>>> word2 = "abc"
>>> for c in word1:
	if c in word2:
		print(c)

		
b
a
a
a
>>> count = 0
>>> for apple in word1:
	if apple in word2:
		count = count+1
		print(apple)

		
b
a
a
a
>>> count
4
>>> index = 0
>>> count = 0
>>> while index < len(word1):
	c = word1[index]
	if c in word2:
		print(c)
		count = count +1
	index = index + 1

	
b
a
a
a
>>> count
4
>>> 
