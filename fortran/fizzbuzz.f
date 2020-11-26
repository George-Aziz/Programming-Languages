c Author: George Aziz
c Date Created: 07/08/2020
c Purpose: FizzBuzz Program that goes to 100, starting from 1
      program fizzbuzz
            integer ii        

                  do ii = 1, 100
                        if (mod(ii,15) == 0) then
                            print *, 'FizzBuzz'
                        else if (mod(ii,5) == 0) then
                            print *, 'Buzz'
                        else if (mod(ii,3) == 0) then
                            print *, 'Fizz'
                        else
                            print *, ii
                        end if
                  end do
      end program fizzbuzz
