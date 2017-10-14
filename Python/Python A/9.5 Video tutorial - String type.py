Python 2.7.13 (v2.7.13:a06454b1afa1, Dec 17 2016, 20:42:59) [MSC v.1500 32 bit (Intel)] on win32
Type "copyright", "credits" or "license()" for more information.
>>> words = "Hello there"
>>> sentence= 'hello world'
>>> words2 = "It's Monday"
>>> print(words2)
It's Monday
>>> words2 " 'It\'s Monday'
SyntaxError: EOL while scanning string literal
>>> words2 = 'It\'s Monday'
>>> print(words2)
It's Monday
>>> line = "Hello \n World"
>>> print(line)
Hello 
 World
>>> numberstr ="3"
>>> numberstr = "3\t4\t5"
>>> print(numberstr)
3	4	5
>>> mystr = "Hello world"
>>> mystr[0] = "H"

Traceback (most recent call last):
  File "<pyshell#13>", line 1, in <module>
    mystr[0] = "H"
TypeError: 'str' object does not support item assignment
>>> mystr + " python"
'Hello world python'
>>> mystr = mystr + " python"
>>> print(mystr)
Hello world python
>>> 
