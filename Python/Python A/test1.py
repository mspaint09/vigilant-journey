import copy

class Book:
    '''attributes title, price and author, where
    author is a Contact object and title is a String,
    and price is a float number. '''
    
class Contact:
    '''has attributes name and email,
    where name and email are both String.'''

mycontact = Contact()
mycontact.name = str('Hemingway')
mycontact.email = str('Ernest@Hemingway.com')

mycontact2 = Contact()
mycontact2.name = str('Butler')
mycontact2.email = str('Judith@Butler.com')

mybook = Book()
mybook.title = str('The Sun Also Rises')
mybook.price = float(11.99)
mybook.author = mycontact.name

mybook2 = Book()
mybook2.title = str('Gender Trouble: Feminism and the Subversion of Identity')
mybook2.price = float(13.99)
mybook2.author = mycontact2.name

def print_book(booktoprint):
    print("Book title: "+str(booktoprint.title))
    print("Book price: $"+str(booktoprint.price))

def which_book_is_more_expensive(mybook, mybook2):
    price1 = float(mybook.price)
    price2 = float(mybook2.price)
    if price1 >= price2:
        return mybook
    else:
        return mybook2

print_book(mybook)

book = which_book_is_more_expensive(mybook, mybook2)
print_book(book)

def which_is_more_expensive_by_copy(mybook, mybook2):
    price1 = float(mybook.price)
    price2 = float(mybook2.price)
    if price1 >= price2:
        return copy.deepcopy(mybook)
    else:
        return copy.deepcopy(mybook2)

copy = which_is_more_expensive_by_copy(mybook, mybook2)
print_book(copy)

def calculate_total_price(mybook, mybook2):
    price1 = mybook.price
    price2 = mybook2.price
    print(price1+price2)

total = calculate_total_price(mybook, mybook2)
print total
