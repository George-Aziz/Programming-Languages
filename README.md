# Programming Languages Assignment

## FORTRAN
---
* This is a fizzbuzz program that goes from 1 to 100
* To compile and run the program you must first do ``gfortran fizzbuzz.f`` where ``fizzbuzz.f`` is the program name and then ``./a.out`` to execute the program

## ALGOL
---
* This is a fizzbuzz program that goes from 1 to 100
* To compile and run the program you must do ``a68g fizzbuzz.a68`` where ``fizzbuzz.a68`` is the program name

## ADA
---
* This is a program that that sorts through bubble sort implementation
* To compile and run the program you must first do ``gnatmake bubblesort.adb`` where ``bubblesort.adb`` is the program name and then ``./bubblesort`` to execute the program.

## YACC & LEX
---
* To compile and run the yacc & lex files you must first do ``lex sorter.l`` and then do ``yacc sorter.y`` and then create an empty file such as “sort” and then do ``gcc -o sort lex.yy.c y.tab.c -lfl``. 
* Once all of those commands have been run, you can proceed to run the file by doing ``./sort``

## SCRIPTING
---
* All scripts are to find all '.conf' files in the enitre computer system
### Bash
* To run the bash file you do ``bash bash.sh`` but you will find a lot of “Permission Denied” being outputted to the terminal screen since the script will attempt to access every file and so to prevent that you can do ``bash bash.sh 2>/dev/null`` which will only output the valid .conf files in the system
* 
### Ruby
*  To run the ruby file, you do ``ruby.rb``
### Perl
* To run the perl file, you do ``perl.pl``

## SMALLTALK
---
* To compile and run the program you must do ``gst fizzbuzz.st`` where fizzbuzz.st is the program name

## C++
---
* To compile and run the program you must first do ``make`` then ``./TestHarness`` to execute the program

## PROLOG
---
* To compile and run the program you must first do ``gplc fizzbuzz.pl`` where ``fizzbuzz.pl`` is the program name and then then ``./fizzbuzz`` to execute the program
* Once executed the program will immediately output the fizzbuzz program since I have used the initialization rule

## SCHEME
---
* To compile and run the program you must do ``mit-scheme –load cocktail.scm`` where cocktail.scm is the program name