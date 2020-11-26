; AUTHOR: George Aziz
; DATE CREATED: 2/11/2020
; PURPOSE: Program that sorts a list full of numbers with cocktail shaker sort

; Bubble sort in the regular direction (left to right (up))
(define (bubbleUp array) 
    (newline) (display "Sorting Up: ")
    (display array) 
    (if (null? (cdr array)) 
        array  ; Returns the list if only 1 value left in list
        (if (< (car array) (cadr array)) ; Else: if current element is less than following next element 
            (cons (car array) (bubbleUp (cdr array))) ; Creates a list with current element as first and then sorts the rest (car element in right place) 
            (cons (cadr array) (bubbleUp (cons (car array) (cddr array))))))) ;Else: Creates list with 'next' element as first (car element not in right place)

; Bubble sort in the irregular direction (right to left (down))
(define (bubbleDown array) 
    (newline) (display "Sorting Down: ")
    (display array)
    (if (null? (cdr array)) 
        array  ; Returns the list if only 1 value left in list
        (let ((checkList (bubbleDown (cdr array)))) ; checkList is used quite a bit and for simpler and more efficient code it is declared here rather than at each use
        (if (>= (cadr array) (car array)) ; Else: If the first element of list is greater or equal than the first element in checkList
            (cons (car array) checkList) ; Creates list of first element in array and rest (leaves it the same as normal)
            (cons (car checkList) (cons (car array) (cdr checkList))))))) ; Else: Creates list with swapped first 2 values

; Cocktail Shaker Sort Procedure
(define (cocktailSort n array)
    (cond ((= n 1) (bubbleDown (bubbleUp array)))
        (else (cocktailSort (- n 1) (bubbleDown (bubbleUp array))))))

; Starting from here is the running of the code

; Create list
(define array (list 100 30 3 10 2 -1 -6 99 23 36 63 26 62))	
; First display Unsorted Array
(newline) (display "=============Unsorted Array=============") (newline)
(display array) (newline)

; Calls CocktailSort Procedure but also creates new array from returned list to output at end
(define sArray (cocktailSort (length array) array))
; Displays Sorted Array
(newline) (display "==============Sorted Array==============") (newline)
(display sArray)