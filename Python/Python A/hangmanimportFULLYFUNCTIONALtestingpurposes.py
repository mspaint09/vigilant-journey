# 6.00 Problem Set 3
# 
# Hangman game
#

# -----------------------------------
# Helper code
# You don't need to understand this helper code,
# but you will have to know how to use the functions
# (so be sure to read the docstrings!)

import random
import string

WORDLIST= "word_list.txt"

def loadWords():
    print "Loading word list from file..."
    # inFile: file
    inFile = open(WORDLIST, 'r', 0)
    # line: string
    line = inFile.readline()
    # wordlist: list of strings
    wordlist = string.split(line)
    print "  ", len(wordlist), "words loaded."
    return wordlist

def chooseWord(wordlist):
    return random.choice(wordlist)

wordlist = loadWords()

def isWordGuessed(secretWord, lettersGuessed):
    for i in range(len(secretWord)):
        if secretWord[i] in lettersGuessed:
            continue
        else:
            return False
    return True


def getGuessedWord(secretWord, lettersGuessed):
    displayWord = ''
    for i in range(len(secretWord)):
        if secretWord[i] in lettersGuessed:
            displayWord += secretWord[i]
        else:
            displayWord += ' _ '
    return displayWord


def getAvailableLetters(lettersGuessed):
    availableLetters = ''
    for c in string.ascii_lowercase:
        if c in lettersGuessed:
            continue
        else:
            availableLetters += c
    return availableLetters

def hangman(secretWord):
    print('Welcome to the game, Hangman!')
    print('I am thinking of a word that is '+ str(len(secretWord)) +' letters long.')
    
    lettersGuessed = []
    mistakesMade = 0
    
    while mistakesMade < 6:
        availableLetters = getAvailableLetters(lettersGuessed)
        print('-------------')
        print('You have ' + str(6-mistakesMade) + ' guesses left.')
        print('Available letters: ' + availableLetters)
        guess = raw_input('Please guess a letter: ').lower()
        
        if guess in lettersGuessed:
            print('Oops! You\'ve already guessed that letter: ' + getGuessedWord(secretWord, lettersGuessed))
        elif guess in secretWord:
            lettersGuessed += guess
            print('Good guess: ' + getGuessedWord(secretWord, lettersGuessed))
            if isWordGuessed(secretWord, lettersGuessed):
              break
        else:
            lettersGuessed += guess
            mistakesMade += 1
            print('Oops! That letter is not in my word: ' + getGuessedWord(secretWord, lettersGuessed))

    win = isWordGuessed(secretWord, lettersGuessed)
    print('-----------')
    if win:
        print('Congratulations, you won!')
    else:
        print('Sorry, you ran out of guesses.')



# When you've completed your hangman function, uncomment these two lines
# and run this file to test! (hint: you might want to pick your own
# secretWord while you're testing)

secretWord = chooseWord(wordlist).lower()
hangman(secretWord)
