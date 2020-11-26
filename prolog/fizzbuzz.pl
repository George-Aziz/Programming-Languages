/*Author: George Aziz
  Date Created: 01/09/2020
  Purpose: FizzBuzz Program that goes to 1000, starting from 1 */

/* printFizzBuzz checks each number and prints the corresponding output*/
/* nl needed to make sure output is on new line */
printFizzBuzz(NUM) :- 0 is mod(NUM,15) -> write('FizzBuzz'), nl; 
                      0 is mod(NUM,5) -> write('Buzz'), nl;
                      0 is mod(NUM,3) -> write('Fizz'), nl; 
                      write(NUM), nl.

/* Initial Rule Call That goes from 1 to 1000 and calls printFizzBuzz module*/
fizzbuzz :- forall(between(1,1000, NUM), printFizzBuzz(NUM)).

/* Initialization rule ensures that moment the file is executed it will run the fizzbuzz rule */
:- initialization(fizzbuzz).