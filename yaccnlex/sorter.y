%{
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
void bubble_sort(int *arr, int n);
void displayArray(int *arr, int n);
int valid = 1; /* Check if valid input */
int count = 0;
int size = 1;
int* arr;
%}
%token NUMBER NEGNUMBER
%token COMMA SBRACK LBRACK 
%%
List:
    LBRACK 
    {
      printf("Invalid List!");
    }
    |SBRACK LBRACK
    {
      printf("Invalid List!");
    }
    |SBRACK ListLoop LBRACK
    {
      if(valid == 1)
      {
        displayArray(arr, count);
      }
    };

ListLoop: 
     Val
    |ListLoop COMMA Val
    |ListLoop COMMA
    {
      printf("Invalid List!");
      valid = 0;
    };

Val: 
     NUMBER
     {
        arr[count] = $1;
        bubble_sort(arr, size);
        count++;
        size++;
        arr = (int*)realloc(arr, sizeof(int)* size);
     }
     |
     NEGNUMBER
     {
        arr[count] = $1;
        bubble_sort(arr, size);
        count++;
        size++;
        arr = (int*)realloc(arr, sizeof(int)* size);
     }
       
%%
void yyerror(const char *str)
{
  fprintf(stderr,"error: %s\n",str);
} 
int yywrap()
{
  return 1;
} 
  
main()
{
  arr = (int*) malloc(size * sizeof(int));
  yyparse();
} 

/* Bubble Sort Implementation Retrieved From: https://www.studytonight.com/data-structures/bubble-sort */
void bubble_sort(int *arr, int n)
{
  int i, j, temp;
  for(i = 0; i < n; i++)
  {
      for(j = 0; j < n-i-1; j++)
      {
          if( arr[j] > arr[j+1])
          {
              // swap the elements
              temp = arr[j];
              arr[j] = arr[j+1];
              arr[j+1] = temp;
          } 
      }
  }
}

void displayArray(int *arr, int n)
{
  // print the sorted array
  printf("\nSorted Array: ");
  for(int i = 0; i < n; i++)
  {
    printf("%d  ", arr[i]);
  }
  printf("\n");    
}