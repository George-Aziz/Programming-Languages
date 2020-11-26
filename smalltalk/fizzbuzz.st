"AUTHOR: George Aziz
DATE CREATED: 01/09/2020
PURPOSE: FizzBuzz Program Created in SmallTalk"

1 to: 100 do: [:num| 
               ((num \\ 15) = 0) ifTrue: ['FizzBuzz' displayNl]
               ifFalse: [ ((num \\ 5) = 0)  ifTrue: ['Buzz' displayNl]
               ifFalse: [ ((num \\ 3) = 0)  ifTrue: ['Fizz' displayNl]
               ifFalse: [ num displayNl ].] ] ]