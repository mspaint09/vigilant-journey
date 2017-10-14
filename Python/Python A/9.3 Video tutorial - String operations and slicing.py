Python 2.7.13 (v2.7.13:a06454b1afa1, Dec 17 2016, 20:42:59) [MSC v.1500 32 bit (Intel)] on win32
Type "copyright", "credits" or "license()" for more information.
>>> number = 5
>>> str(number)+" hello"
'5 hello'
>>> string1 = "There are %d students" %33
>>> string1
'There are 33 students'
>>> string2 = "There are %d courses" %number
>>> string2
'There are 5 courses'
>>> string3 = "The student's name is %s " % "Eric"
>>> string3
"The student's name is Eric "
>>> str2 = "World"
>>> string4 ="Hello %s Python" % str2
>>> string4
'Hello World Python'
>>> ==
SyntaxError: invalid syntax
>>> "apple" == "orange"
False
>>> "appla" == "apple"
False
>>> "a" =="A"
False
>>> "a" < "A"
False
>>> "a" > "A"
True
>>> "a" != "A"
True
>>> "apple" != "apple"
False
>>> "apple" <= "apple"
True
>>> "a" in "apple"
True
>>> "A" in "Apple"
True
>>> string5 = "how are you"
>>> len(string5)
11
>>> string5[0]
'h'
>>> string[1]

Traceback (most recent call last):
  File "<pyshell#25>", line 1, in <module>
    string[1]
NameError: name 'string' is not defined
>>> string5[1]
'o'
>>> string5[3]
' '
>>> string[11]

Traceback (most recent call last):
  File "<pyshell#28>", line 1, in <module>
    string[11]
NameError: name 'string' is not defined
>>> string5[10]
'u'
>>> string5[0:3]
'how'
>>> string5[4:7]
'are'
>>> string5[4:6]
'ar'
>>> string5[4:len(string(5)]
	
SyntaxError: invalid syntax
>>> string5[4:len(string(5))]

Traceback (most recent call last):
  File "<pyshell#34>", line 1, in <module>
    string5[4:len(string(5))]
NameError: name 'string' is not defined
>>> string5[4:len(string5)]
'are you'
>>> string5{4:]
SyntaxError: invalid syntax
>>> string5[4:]
'are you'
>>> string5[:4]
'how '
>>> string5[0:3] = "where"

Traceback (most recent call last):
  File "<pyshell#39>", line 1, in <module>
    string5[0:3] = "where"
TypeError: 'str' object does not support item assignment
>>> s = "where" + string5[4:len(string5)]
>>> s
'whereare you'
>>> s = "where " + string5[4:len(string5)]
>>> s
'where are you'
>>> 
