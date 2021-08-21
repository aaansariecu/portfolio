#!/usr/bin/python3

import hashlib
import itertools

passwordHash = "f88ee7bd95b296b0f5ddd0d6ac22fc1b019faee6676238d6e39acb434396e3e6" #hash of AOO6000

def brute_force(hash): #Function to use the password strength combination 3 aplghabets and 4 number as value cycle
 
    alpha = [chr(n) for n in range(ord('A'), ord('Z'))] #defining Alphabet range in upper car
    num = [chr(n) for n in range(ord('0'), ord('9'))] #defining number range 
 
    for seg1 in itertools.product(alpha, repeat=3): 
        
        for seg2 in itertools.product(num, repeat=4):

            wordlistHash = ''.join(seg1 + seg2) #generating possible combination to crack the password
            
            if hashlib.sha256(wordlistHash.encode("utf-8")).hexdigest() == hash: # generating hash to compare with the value
                return wordlistHash


print("Trying password...")
cracked_hash = brute_force(passwordHash) #once the hash value is matched script will pass it on
print(f"Password has been cracked! It was: %s" % cracked_hash) #display of cracked passwords