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
>>> 
