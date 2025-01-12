```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype My_Sub_Array is My_Array(1..5);
   Sub_Arr : My_Sub_Array;
begin
   Sub_Arr := My_Arr(1..5); -- This is fine
   My_Arr(1..5) := Sub_Arr; -- This is also fine

   -- This will cause an error because it is attempting to assign a larger
   -- array to a smaller one.
   -- Sub_Arr := My_Arr;

exception
   when others =>
      put_line("Error occurred.");
end Example;
```