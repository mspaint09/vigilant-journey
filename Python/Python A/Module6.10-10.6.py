Python 2.7.13 (v2.7.13:a06454b1afa1, Dec 17 2016, 20:42:59) [MSC v.1500 32 bit (Intel)] on win32
Type "copyright", "credits" or "license()" for more information.
>>> grades = [70, 80, 90]
>>> grades[0]
70
>>> grades[1]
80
>>> grades[1:2]
[80]
>>> grades[0:2]
[70, 80]
>>> 70 in grades
True
>>> 60 in grades
False
>>> len(grades)
3
>>> min(grades)
70
>>> max(grades)
90
>>> sun(grades)

Traceback (most recent call last):
  File "<pyshell#10>", line 1, in <module>
    sun(grades)
NameError: name 'sun' is not defined
>>> sum(grades)
240
>>> departments = ['cs', 'bio', 'ee', 'history']
>>> len(departments)
4
>>> min(departments)
'bio'
>>> max(departments)
'history'
>>> sum(departments)

Traceback (most recent call last):
  File "<pyshell#16>", line 1, in <module>
    sum(departments)
TypeError: unsupported operand type(s) for +: 'int' and 'str'
>>> address=[100, 'Foothill road']
>>> len(address)
2
>>> for grade in grades:
	print(grade)

	
70
80
90
>>> for item in grade:
	print(grade)

	

Traceback (most recent call last):
  File "<pyshell#24>", line 1, in <module>
    for item in grade:
TypeError: 'int' object is not iterable
>>> for item in grades:
	print(item)

	
70
80
90
>>> for element in departments:
	print(element)

	
cs
bio
ee
history
>>> dir(list)
['__add__', '__class__', '__contains__', '__delattr__', '__delitem__', '__delslice__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__getitem__', '__getslice__', '__gt__', '__hash__', '__iadd__', '__imul__', '__init__', '__iter__', '__le__', '__len__', '__lt__', '__mul__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__reversed__', '__rmul__', '__setattr__', '__setitem__', '__setslice__', '__sizeof__', '__str__', '__subclasshook__', 'append', 'count', 'extend', 'index', 'insert', 'pop', 'remove', 'reverse', 'sort']
>>> names = ["Mary", "John", "Peter"]
>>> len(names)
3
>>> name = input("Enter a name: ")
Enter a name: Kate

Traceback (most recent call last):
  File "<pyshell#35>", line 1, in <module>
    name = input("Enter a name: ")
  File "<string>", line 1, in <module>
NameError: name 'Kate' is not defined
>>> name = input("Enter a name: ")
Enter a name: Kate

Traceback (most recent call last):
  File "<pyshell#36>", line 1, in <module>
    name = input("Enter a name: ")
  File "<string>", line 1, in <module>
NameError: name 'Kate' is not defined
>>> name

Traceback (most recent call last):
  File "<pyshell#37>", line 1, in <module>
    name
NameError: name 'name' is not defined
>>> name=input("Enter a name: ")
Enter a name: Kate

Traceback (most recent call last):
  File "<pyshell#38>", line 1, in <module>
    name=input("Enter a name: ")
  File "<string>", line 1, in <module>
NameError: name 'Kate' is not defined
>>> name = raw_input("Enter a name: ")
Enter a name: Kate
>>> names.append(name)
>>> names
['Mary', 'John', 'Peter', 'Kate']
>>> name = input("enter a name: ")
enter a name: bob

Traceback (most recent call last):
  File "<pyshell#43>", line 1, in <module>
    name = input("enter a name: ")
  File "<string>", line 1, in <module>
NameError: name 'bob' is not defined
>>> name = raw_input(Enter a name: ")
		 
SyntaxError: invalid syntax
>>> name = raw_input("Enter a name: ")
Enter a name: Bob
>>> if name != '':
	names.append(name)

	
>>> names
['Mary', 'John', 'Peter', 'Kate', 'Bob']
>>> names.extend(["Alex", "Mike"])
>>> names
['Mary', 'John', 'Peter', 'Kate', 'Bob', 'Alex', 'Mike']
>>> names.extend("Scott")
>>> names
['Mary', 'John', 'Peter', 'Kate', 'Bob', 'Alex', 'Mike', 'S', 'c', 'o', 't', 't']
>>> names.extend(["Scott"])
>>> names
['Mary', 'John', 'Peter', 'Kate', 'Bob', 'Alex', 'Mike', 'S', 'c', 'o', 't', 't', 'Scott']
>>> names.remove("S")
>>> names
['Mary', 'John', 'Peter', 'Kate', 'Bob', 'Alex', 'Mike', 'c', 'o', 't', 't', 'Scott']
>>> del.names[7:11]
SyntaxError: invalid syntax
>>> del names[7:11]
>>> names
['Mary', 'John', 'Peter', 'Kate', 'Bob', 'Alex', 'Mike', 'Scott']
>>> names.pop()
'Scott'
>>> names
['Mary', 'John', 'Peter', 'Kate', 'Bob', 'Alex', 'Mike']
>>> name1 = names.pop
>>> name1 = names.pop()
>>> name1
'Mike'
>>> names
['Mary', 'John', 'Peter', 'Kate', 'Bob', 'Alex']
>>> name1 = names.pop(1)
>>> name1
'John'
>>> names
['Mary', 'Peter', 'Kate', 'Bob', 'Alex']
>>> names.remove("John")

Traceback (most recent call last):
  File "<pyshell#70>", line 1, in <module>
    names.remove("John")
ValueError: list.remove(x): x not in list
>>> if "John" in names:
	names.remove("John")

	
>>> names
['Mary', 'Peter', 'Kate', 'Bob', 'Alex']
>>> names.insert(-2, "John")
>>> names
['Mary', 'Peter', 'Kate', 'John', 'Bob', 'Alex']
>>> names.index("Kate")
2
>>> names.index("Mike")

Traceback (most recent call last):
  File "<pyshell#78>", line 1, in <module>
    names.index("Mike")
ValueError: 'Mike' is not in list
>>> if "Mike" in names:
	print(names.index("Mike"))

	
>>> names.append("Mary")
>>> names
['Mary', 'Peter', 'Kate', 'John', 'Bob', 'Alex', 'Mary']
>>> names.count("Mary")
2
>>> S = " I love coding in Python"
>>> S = "I love coding in Python"
>>> lst.S.split()

Traceback (most recent call last):
  File "<pyshell#87>", line 1, in <module>
    lst.S.split()
NameError: name 'lst' is not defined
>>> lst = S.split()
>>> lst
['I', 'love', 'coding', 'in', 'Python']
>>> lst2 = lst
>>> lst2
['I', 'love', 'coding', 'in', 'Python']
>>> lst in lst2
False
>>> lst is lst2
True
>>> lst[2] = "programming"
>>> lst
['I', 'love', 'programming', 'in', 'Python']
>>> lst2
['I', 'love', 'programming', 'in', 'Python']
>>> lst + ["language"]
['I', 'love', 'programming', 'in', 'Python', 'language']
>>> lst
['I', 'love', 'programming', 'in', 'Python']
>>> lst.append("language")
>>> lst
['I', 'love', 'programming', 'in', 'Python', 'language']
>>> def get_lastitem(mylist):
	print(mylist.pop())

	
>>> get_lastitem(lst)
language
>>> lst
['I', 'love', 'programming', 'in', 'Python']
>>> students = [["stu001", "John"], ["stu002", "Mary"], ["stu003", "Peter"]]
>>> len(students)
3
>>> students[0]
['stu001', 'John']
>>> student[1]

Traceback (most recent call last):
  File "<pyshell#109>", line 1, in <module>
    student[1]
NameError: name 'student' is not defined
>>> students[1]
['stu002', 'Mary']
>>> students[2]
['stu003', 'Peter']
>>> students[0][1]
'John'
>>> students[1][1]
'Mary'
>>> students[2][1]
'Peter'
>>> students[0][0]
'stu001'
>>> def print_names(lst):
	for item in lst:
		print(item[1])

		
>>> print_names(students)
John
Mary
Peter
>>> 
