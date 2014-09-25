Ruby-Challenge
==============

A Four Question Ruby Code Challenge

Question 1
FizzBuzz
Write a program which prints the numbers from 1 to 107, each on a new line. But for multiples of three 
print “Fizz” instead of the number 3 and for the multiples of five print “Buzz”.  For numbers which are 
multiples of both three and five print “FizzBuzz”. Read in the input number from STDIN.
Sample Input #00:
15
Sample Output #00 :
1
2
Fizz
4
Buzz
Fizz
7
8
Fizz
Buzz
11
Fizz
13
14
FizzBuzz

Explanation:
Position 3,6,9,12 have the word "Fizz" because they are multiples of 3.
Positions 5 and 10 have the word "Buzz" because they are multiples of 5.
Position 15 has the word FizzBuzz because it is a multiple of both 3 and 5.


Question 2
Create a Many-to-Many relationship
Create two models connected by a many-to-many relationship using has_many through
Model 1: Campus
 - city
 - state
 - name\n
Model 2: Student
 - first name
 - last name
Bearing in mind that a student can belong to more than one campus, set up their relationship with an 
additional field denoting if a particular campus is their primary campus.

Question 3
Explain duck typing
Ruby is well known for it's use of duck typing. Please explain what this is and write a simple example of it in action.

Question 4
Manipulating API Data
Fetch the JSON data from http://dev.dryan.net.s3.amazonaws.com/students.json then sort the results by 
each entries "grade" attribute, ascending order of college completion.
