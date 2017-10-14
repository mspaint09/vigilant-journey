# -----------------------------------------------------------------------------
# Name:        tax
# Purpose: Compute Tax for input price
# -----------------------------------------------------------------------------
"""
Enter your docstring with a one-line overview here:
This program will help you figure out the tax in what is being purchased

and a more detailed description here:
With this program you can input the price, and the program will calculate
the tax amount and then add it to the cost to print out total cost
"""
# Enter your code here

TAX_RATE = 875/10000		#tax rate : 8.75%
user_input = input('Please enter the price in $:')
cost = float(user_input)	#Convert the input string to a number

tax = TAX_RATE * cost		# Calculate the tax
tax = round(tax, 2)			#Round tip to two decimals

print('Tax Amount : $', tax, sep='')	#supress the space separator

total = cost + tax			# The total cost of meal
total = round(total, 2)		# Round total to two decimals

print('Total cost: $', total, sep='')	# Suppress the space separator
