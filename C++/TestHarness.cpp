/*********************************************************** 
 * AUTHOR: George Aziz
 * DATE CREATED: 31/10/2020
 * PURPOSE: Program that sorts Book Objects with Quicksort
 ***********************************************************/

#include <iostream> 
using namespace std; 
#include <stdlib.h>
#include <stdio.h>
#include "Book.h"
#include "Quicksort.h"

int main(int argc, const char* argv[])
{
    //CREATING BOOKS 
    Book bookArray[8];
    Book b1,b2,b3,b4,b5,b6,b7,b8; 
    b1.SetBookID(1);
    b1.SetBookISBN("192736724343");
    b1.SetBookName("Language Guide - C++");
    b2.SetBookID(2);
    b2.SetBookISBN("432736724343");
    b2.SetBookName("Language Guide - FORTRAN");
    b3.SetBookID(3);
    b3.SetBookISBN("672736724343");
    b3.SetBookName("Language Guide - ALGOL");
    b4.SetBookID(4);
    b4.SetBookISBN("392736724343");
    b4.SetBookName("Language Guide - ADA");
    b5.SetBookID(5);
    b5.SetBookISBN("642736724343");
    b5.SetBookName("Language Guide - Scripts");
    b6.SetBookID(6);
    b6.SetBookISBN("262736724343");
    b6.SetBookName("Language Guide - Yacc & Lex");
    b7.SetBookID(7);
    b7.SetBookISBN("912736724343");
    b7.SetBookName("Language Guide - Scheme");
    b8.SetBookID(8);
    b8.SetBookISBN("382736724343");
    b8.SetBookName("Language Guide - Prolog");
    bookArray[0] = b5;
    bookArray[1] = b8;
    bookArray[2] = b1;
    bookArray[3] = b2;
    bookArray[4] = b6;
    bookArray[5] = b7;
    bookArray[6] = b3;
    bookArray[7] = b4;
    //Displays Book IDs before sorted
    std::cout << "=====Book IDs Before Sorting:======" << std::endl;
    std::cout << "(";
    for(int i = 0; i < 8; i++)
    {
        std::cout << std::to_string(bookArray[i].GetBookID()) << "  ";
    }
    std::cout << ")" << std::endl;
    std::cout << "=====Book IDs After Sorting:=======" << std::endl;

    quickSort(bookArray, 0, (*(&bookArray + 1) - bookArray) - 1);

    //Displays Books in array after sort
    for(int i = 0; i < 8; i++)
    {
        std::cout << "Book ID: " << std::to_string(bookArray[i].GetBookID()) << std::endl;
        std::cout << "Book Name: " << bookArray[i].GetBookName() << std::endl;
        std::cout << "Book ISBN: " << bookArray[i].GetISBN() << std::endl << std::endl;
    }
    return 0;
}
