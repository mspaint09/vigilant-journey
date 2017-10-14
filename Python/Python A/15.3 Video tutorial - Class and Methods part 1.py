Python 2.7.13 (v2.7.13:a06454b1afa1, Dec 17 2016, 20:42:59) [MSC v.1500 32 bit (Intel)] on win32
Type "copyright", "credits" or "license()" for more information.
>>> 
================= RESTART: C:/Users/Samara/Desktop/15.3.1.py =================
>>> rect1 =  Rectangle()
>>> rec1.width = 20.5

Traceback (most recent call last):
  File "<pyshell#1>", line 1, in <module>
    rec1.width = 20.5
NameError: name 'rec1' is not defined
>>> rect1 = Rectangle()
>>> rect1.width = 20.5
>>> rect1.height = 15.5
>>> Rectangle.print_rectan

Traceback (most recent call last):
  File "<pyshell#5>", line 1, in <module>
    Rectangle.print_rectan
AttributeError: class Rectangle has no attribute 'print_rectan'
>>> Rectangle.print_rectangle(rect1)
width=20.5
height=15.5
>>> rect1.print_rectangle()
width=20.5
height=15.5
>>> 
================= RESTART: C:/Users/Samara/Desktop/15.3.1.py =================
>>> rect1 = Rectangle()
>>> rect1.width = 20.5
>>> rect1.height = 15.5
>>> rect1.print_rectangle()
width=20.5
height=15.5
>>> 
