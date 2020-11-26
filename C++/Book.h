#ifndef BOOK_H
#define BOOK_H

#include <iostream>

class Book
{
private:
    int bookID;
    std::string bookName;
    std::string ISBN;
public:
    int GetBookID()
    {
        return bookID;
    }

    std::string GetBookName()
    {
        return bookName;
    }

    std::string GetISBN()
    {
        return ISBN;
    }

    void SetBookID(int inBookID)
    {
        bookID = inBookID;
    }

    void SetBookName(std::string inBookName)
    {
        bookName = inBookName;
    }
    void SetBookISBN(std::string inISBN)
    {
        ISBN = inISBN;
    }

    Book() { }
    ~Book() { }
};

#endif