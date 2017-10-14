# -----------------------------------------------------------------------------
# Name:    grader
# Purpose: CS 21A Assignment # 2
# -----------------------------------------------------------------------------
"""
Enter your docstring with a one-line overview here
This python program computes the letter grade earned in a fictional course.

and a more detailed description here.
The user inputs the values and the programgram calculates the letter grade 
of the course. 
"""
# Enter your code here
def letter_grade(avg):
        avg=round(avg,1)
        if(avg>=90):
            return 'A'
        elif(avg>=80 and avg<=89.9):
            return 'B'
        elif(avg>=70 and avg<=79.9):
            return 'C'
        elif(avg>=60 and avg<=69.9):
            return 'D'
        else:
            return 'F'
# Initialize a list for the grades to be entered by the user
def grade_input():
    grades=[]
    while(True):
	 # Prompt the user for input repeatedly,
     userInput=input("Please enter a grade:")
	 # Stop prompting when the user input is 'end'.
     if(userInput=="end"):
         break;
     grade=float(userInput)     
     if(grade<0 or grade>100):
         print("Not within range")
     else:
		 # adding each grade entered (as a number) to the grades list.
         grades.append(grade)              
    return grades

# Use a constant for the minimum number of grades required for a drop
def drop_lowest(grades):
	# Are there enough grades to drop the lowest one?
    if(grades and len(grades)>=4):
        lowest=grades[0]
        for grade in grades:
            if(grade<lowest):
                lowest=grade
		# If so, remove and print the lowest grade.
        print("Lowest grade dropped:",lowest)
        grades.remove(lowest)
    return grades

# Use some list functions to compute and print the average numeric grade.
def compute_average(grades):
    if(grades):
        total=0
        for grade in grades:
            total+=grade
        return total/len(grades)

# Compute and print the letter grade.
def main():
    grades=grade_input()
    if(grades):
        grades=drop_lowest(grades)
        avg=compute_average(grades)
        print("Course Average ",avg)
        print("Letter Grade:",letter_grade(avg))
        print("Based on the following grades:")
		# Loop through the grades list and print them.
        for grade in grades:
            print(grade)
    else:
        print("No input!")
if __name__=='__main__':
    main()
