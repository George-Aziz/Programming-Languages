/* The Quicksort implementation has been taken from my GeeksForGeeks and adjusted to work with Book Objects
   Retrieved from: https://www.geeksforgeeks.org/cpp-program-for-quicksort/ */

#ifndef QUICKSORT_H
#define QUICKSORT_H

#include "Book.h"

void swap(Book* a, Book* b) 
{ 
    Book temp = *a; 
    *a = *b; 
    *b = temp; 
} 
  
/* This function takes last element as pivot, places the pivot element at its correct position in sorted array, 
   and places all smaller (smaller than pivot) to left of pivot and all greater elements to right of pivot */
int partition (Book arr[], int low, int high) 
{ 
    int pivot = arr[high].GetBookID();    // pivot 
    int i = (low - 1);  // Index of smaller element 
  
    for (int j = low; j <= high- 1; j++) 
    { 
        // If current element is smaller than or equal to pivot 
        if (arr[j].GetBookID() <= pivot) 
        { 
            i++; // increment index of smaller element 
            swap(&arr[i], &arr[j]); 
        } 
    } 
    swap(&arr[i + 1], &arr[high]); 
    return (i + 1); 
} 
  
/*
   The main function that implements QuickSort 
   arr[] --> Array to be sorted, 
   low  --> Starting index, 
   high  --> Ending index 
*/
void quickSort(Book arr[], int low, int high) 
{ 
    if (low < high) 
    { 
        /* pi is partitioning index, arr[p] is now at right place */
        int pi = partition(arr, low, high); 
  
        // Separately sort elements before partition and after partition 
        quickSort(arr, low, pi - 1); 
        quickSort(arr, pi + 1, high); 
    } 
} 
#endif