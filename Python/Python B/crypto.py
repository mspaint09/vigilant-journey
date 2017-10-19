# -----------------------------------------------------------------------------
# Name:        translate
# Purpose:     assignment # 3
#
# Author:   
# Date:     10/16/2017
# -----------------------------------------------------------------------------
"""
Enter your docstring with a one-line overview here
Program transforms words into different words
and a more detailed description here.
If words end with vowel then 'tan' will be added if words end with consonants
then the first letter will be added to the end along with 'est'
"""

def starts_with_vowel(word):
    """
    Enter your function docstring here
    Checks if word starts with vowel or not
    parameter : word (string)
                word_conversion (string)
                first_letter (string)

    """
    # return True if the word starts with a vowel and False otherwise
    # #if length of word is greater than 0 and word is alphanumeric
    if len(word) > 0 and word.isalpha():
        # Convert word to lowercase and transform into word_conversion variable
        word_conversion = word.lower()
        # The 1st letter you input as word transform into first_letter variable
        first_letter = word_conversion[0]
        # if the first letter is a vowel
        if first_letter in ('a', 'e', 'i', 'o', 'u'):
            return True
        else:
            return False
    else:
        print("empty")

def encrypt(word):
    """
    Enter your function docstring here
    It encrypts the function to end with 'tan' if vowel else 'est'
    parameters : word (string)
                 new_word_encrypt (bool)
                 new_word_tan (string)
                 new_word_est (string)
    """
    # encrypt a single word into the secret language
    # call starts_with_vowel to decide which pattern to follow
    new_word_encrypt = starts_with_vowel(word)
    if new_word_encrypt is True:
        new_word_tan = word + 'tan'
        # return a single word (encrypted)
        return new_word_tan
    else:
        new_word_est = word[1:] + word[0] + 'est'
        # return a single word (encrypted)
        return new_word_est
        # return a single word (encrypted)

def decrypt(word):
    """
    Enter your function docstring here
    It decrypts words back into english or the original form
    parameters: word (string)
                word_sans_tan (string)
                word_sans_est (string)
                none (string)

    """
    # decrypt a single word from the secret language
    if word[0] in ('a', 'e', 'i', 'o', 'u') and word[-3:] == 'tan':
        word_sans_tan = word[:-3]
        return word_sans_tan
    elif word[-3:] == 'est' and len(word) > 3:
        word_sans_est = word[-4] + word[:-4]
        return word_sans_est
    else:
        # If the word is not a vali d word in the secret language, return None
        none = 'None, invalid message '
        return none

def translate(text, mode):
    """
    Enter your function docstring here
    Will push through along encryption or decryption road in program and keep
    track of lists
    parameters: text (string)
                mode (string)
                word (string)
                translate_list (string)
                encrypted_word (string)
                list_words (string)
                decrypted_word (string)
                final_list (string)
    """
    # Translate (encrypt or decrypt) the whole message
    # Split the text into a list of words
    list_words = text.split()
    # if mode is 'E' encrypt each of the words in the list
    translate_list = []
    decrypt_word = text
    if mode == "E":
        for word in list_words:
            encrypted_word = encrypt(word)
            # Build a new list with these translated words
            translate_list.append(encrypted_word)
    # if mode id 'D' decrypt each word in the list
    if mode == "D":
        for word in list_words:
            decrypted_word = decrypt(word)
            # Build a new list with these translated words
            translate_list.append(decrypted_word)
        #else:
            #print('None, invalid message')
            #final_list_none = ''.join(translate_list)
            #return final_list_none
    translate_list.reverse()
    final_list = " ".join(translate_list)
    # and return it
    return final_list

def choose_mode():
    """
    Tracks if input is done correctly if not restarts
    Enter your function docstring here
    parameters : user_input (string)
                 input (string)
    """
    # Prompt the user for input repeatedly until they enter 'E' or 'D'.
    while True:
        user_input = input("Please type E to encrypt or D to" +
                           " decrypt a message:")
        # Return the user's choice.
        if user_input in ('E', 'D'):
            # Return the user's choice.
            return user_input
        else:
            print("Invalid Choice")

def main():
    # Get the user choice 'E' or 'D' and save it in a variable.
    user_choice = choose_mode()
    # Prompt the user for the message to be translated.
    if user_choice in ('E', 'D'):
        message = input("Please enter your message:")
        translated_message = translate(message, user_choice)
        print(translated_message)
    else:
        print("Invalid Choice")

if __name__ == '__main__':
    main()
