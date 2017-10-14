class Rectangle:
    ''' Represents a new type of rectangle
    attributes: width, height'''

    def __init__(self, w=1, h=1):
        self.width = w
        self.height = h

    def __str__(self):
        return "width="+str(self.width)+" height="+str(self.height)
    
    def print_rectangle(self):
        print("width="+str(self.width))
        print("height="+str(self.height))

    def total_area(self, rect2):
        area1 = self.width*self.height
        area2 = rect2.width&rect2.height
        return area1 + area2

    def isBigger(self, other):
        return self.width*self.height > other.width*other.height

    def __add__(self, other):
        if isinstance(other, Rectangle):
            rect = Rectangle(self.width + other.width, self.height+other.height)
            return rect
        else:
            rect = Rectangle(self.width+other, self.height+other)
            return rect
