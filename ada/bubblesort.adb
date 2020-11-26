--AUTHOR: George Aziz
--DATE CREATED: 31/08/2020
--PURPOSE: Implementation of bubble sort algorithm within ada

with Ada.Text_IO; use Ada.Text_IO;

procedure bubblesort is
    TEMP: Integer;
	type Integers is range 0 .. 1000000;
	type IntArray is array (0 .. 9) of Integer; 
	Arr : IntArray := (1,5,30,20,10,5,3,2,15,25); --Change Array here
begin
    -- Below is the display for the inital array prior to sorting
    Put_Line("=====Display of Unsorted Elements=====");
    for I in Arr'Range loop
        Put(Integer'Image (Arr(I)) & " ");
    end loop;
    Put_Line("");

    for I in Arr'Range loop
        for II in Arr'First .. I loop
            if Arr(I) < Arr(II) then
                TEMP := Arr(II);
                Arr(II) := Arr(I);
                Arr(I) := TEMP;
            end if;
        end loop;
    end loop;

    -- Below is the display loop for the newly sorted array
    Put_Line("======Display of Sorted Elements======");
    for I in Arr'Range loop
        Put(Integer'Image (Arr(I)) & " ");
    end loop;
	Put_Line("");

end BubbleSort;
