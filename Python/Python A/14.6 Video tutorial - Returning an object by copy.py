Python 2.7.13 (v2.7.13:a06454b1afa1, Dec 17 2016, 20:42:59) [MSC v.1500 32 bit (Intel)] on win32
Type "copyright", "credits" or "license()" for more information.
>>> class Car:
	'''Represents a new car type Car
	attributes: maker, fuelcapacity, number_of_doors'''

	
>>> mycar = Car()
>>> mycar.maker = "Honda"
>>> mycar.fuelcapacity = 16
>>> mycar.number_of_doors = 4
>>> class Rectangle:
	'''Represents a rectangle type
	attributes: width, height'''

	
>>> rect1 = Rectangle()
>>> rect1.width = 20
>>> rect1.height = 10
>>> rect2 = Rectangle()
>>> rect2.width = 15
>>> rect2.height = 12
>>> def print_rectangle(rect):
	print("width="+str(rect.width))
	print("height="+str(rect.height))

	
>>> print_rectangle(rect1)
width=20
height=10
>>> print_rectangle(rect2)
width=15
height=12
>>> 
rect1.width = rect1.width*2
>>> rect1.height =  rect1.height*2
>>> print_rectangle(rect1)
width=40
height=20
>>> def which_is_bigger(rec1, rec2):
	area1 = rec1.width * rec1.height
	area2 = rec2.width * rec2.height
	if area1 >= area2:
		return rec1
	else:
		return rec2

	
>>> rect = which_is_bigger(rect1, rect2)
>>> print_rectangle(rect)
width=40
height=20
>>> rect1.width = rect1.width - 10
>>> rect1.height = rect1.height - 10
>>> print_rectangle(rect1)
width=30
height=10
>>> print_rectangle(rect)
width=30
height=10
>>> class Point:
	'''Represents new type Point using x, and y coordinates'''

	
>>> point1 = Point()
>>> point1.x = 0.0
>>> point1.y = 0.0
>>> class Rectangle:
	'''Represents new type Rectangle
	attributes: width, height, corner (which is of Point type) '''

	
>>> rect1 = Rectangle()
>>> rect1.width = 20
>>> rect1.height = 10
>>> rect1.cornerr = Point()
>>> rect1.corner.x = 0.0

Traceback (most recent call last):
  File "<pyshell#55>", line 1, in <module>
    rect1.corner.x = 0.0
AttributeError: Rectangle instance has no attribute 'corner'
>>> rect1.corner = Point()
>>> rect1.corner.x = 0.0
>>> rect1.corner.y = 0.0
>>> rect2 = rect1
>>> rect2.width
20
>>> rect2.height
10
>>> rect.width = rect1.width *2
>>> rect1.width
20
>>> rect2.width
20
>>> rect1.width = rect1.width *2
>>> rect1.width
40
>>> rect2.width
40
>>> rect1 == rect2
True
>>> import copy
>>> rect3 = copy.copy(rect1)
>>> rect3.width
40
>>> rect3.height
10
>>> rect3.corner.x
0.0
>>> rect3.corner.y
0.0
>>> rect1 == rect3
False
>>> rect1.width = rect1.width /2
>>> rect1.width
20
>>> rect2.width
20
>>> rect3.width
40
>>> rect1.corner == rect3.corner
True
>>> rect1.corner.x = 5.5
>>> rect1.corner.x
5.5
>>> rect3.corner.x
5.5
>>> rect4 = copy.deepcopy(rect1)
>>> rect4.width
20
>>> rect4.height
10
>>> rect4.corner.x
5.5
>>> rect1 is rect4
False
>>> rect1.corner is rect4.corner
False
>>> rect1.corner.x = 0.0
>>> rect1.corner.x
0.0
>>> rect3.corner.x
0.0
>>> rect4.corner.x
5.5
>>> 
>>> 
>>> 
>>> 
>>> 
>>> 
>>> def whicch_is_bigger_by_copy(rec1, rec2):
	area1 = rec1.width * rec1.height
	area2 = rec2.width * rec2.height
	if area1 >= area2:
		return copy.deepcopy(rec1)
	else:
		return copy.deepcopy(rec2)

	
>>> biggerrect = which_is_bigger_by_copy(rect1, rect3)

Traceback (most recent call last):
  File "<pyshell#108>", line 1, in <module>
    biggerrect = which_is_bigger_by_copy(rect1, rect3)
NameError: name 'which_is_bigger_by_copy' is not defined
>>> def which_is_bigger_by_copy(rec1, rec2):
	area1 = rec1.width * rec1.height
	area2 = rec2.width * rec2.height
	if area1 >= area2:
		return copy.deepcopy(rec1)
	else:
		return copy.deepcopy(rec2)

	
>>> biggerrect = which_is_bigger_by_copy(rect1, rect3)
>>> rect1.width
20
>>> rect1.height
10
>>> rect3.width
40
>>> rect3.height
10
>>> biggerrect.wwidth

Traceback (most recent call last):
  File "<pyshell#116>", line 1, in <module>
    biggerrect.wwidth
AttributeError: Rectangle instance has no attribute 'wwidth'
>>> biggerrect.width
40
>>> biggerrect.height
10
>>> biggerrect is rect3
False
>>> rect3.width = rect3.width + 50
>>> rect3.width
90
>>> biggerrect.width
40
>>> 
