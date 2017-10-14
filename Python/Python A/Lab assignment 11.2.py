class Dog:
    '''
    name : String
    age : integer
    weight : integer
    and the following methods : __init__ method that initializes the attributes name, age and weight.
    __str__ method that returns a string representation of the Dog object.
    is_heavier method that returns a string representation of the Dog object.
    returns a boolean value indicating if the weight of self object is heavier than that of the other object
    '''

    def __init__(self, name, age, weight):
        self.name = str(name)
        self.age = int(age)
        self.weight = int(weight)

    def __str__(self):
        return "name="+str(self.name)+" age="+str(self.age)+" weight="+str(self.weight)

    def is_heavier(self, other):
        return self.weight > other.weight
