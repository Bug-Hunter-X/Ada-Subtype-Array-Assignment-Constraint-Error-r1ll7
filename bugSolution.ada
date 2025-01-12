```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype My_Sub_Array is My_Array(1..5);
   Sub_Arr : My_Sub_Array;
begin
   Sub_Arr := My_Arr(1..5); -- Correct, slice assignment
   My_Arr(1..5) := Sub_Arr; -- Correct, slice assignment

   -- To handle assignments from larger arrays to smaller subtypes
   -- you have to explicitly slice the larger array
   My_Arr := (others => 0); --Example of assigning a larger array
   Sub_Arr := My_Arr(1..5); --Proper assignment of the first 5 values

exception
   when others =>
      put_line("Error occurred.");
end Example;
```