#!/bin/bash

echo -e "sed statements:" #all sed statements
grep -r  '\bsed\+\b' ../
echo

echo -e "Lines that start with the letter m:" #all lines that start with the letter m
grep -r -i '^m' ../
echo

echo -e "Lines that contain three digit numbers:" #all lines that contain three digit numbers
grep -rE  '[[:digit:]]{3}' ../
echo

echo -e "echo statements with at least three words:" #all echo statements with at least three words
grep -rE 'echo\s(-[a-zA-Z]+\s)*"(.+\s){3,}.*"' ../
echo

echo -e "Lines that would make a good password:" #all lines that would make a good password (use your knowledge of cybersecurity to decide what makes a good password).

grep -rP 'echo\s(-[a-zA-Z]+\s)*"(.+\s){3,}.*"' ../
echo
