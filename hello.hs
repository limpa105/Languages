

-- Defining pattern matching before main
-- 4 Integer matches because we are matching 3 integers to an integer
multiply_all_but_zero :: Integer -> Integer-> Integer-> Integer 
-- we can do something similar to an if stament but a lot inside functions
multiply_all_but_zero 0 x y = 1 
multiply_all_but_zero x y z = x * y * z

-- can also implement a function with guards but considered worse syntax

--Let us a define a function that prints all items in a list
multiply_list :: [Integer] -> Integer
multiply_list [] = 1
multiply_list (x:xs) =  x * multiply_list xs

main :: IO()

main = do
  let var1 = 5
  let var2 = 2
  -- Lets try multiplication in Haskell
  putStrLn "We can do multiplication:"
  print(var1 * var2)
  -- Haskell is very powerful for list implementations
  putStrLn "We can print lists and their sums"
  print [1..10]
  print(sum[1..10])
  -- Another way to create lists in huskell is 
  print(1:2:3:[])
  -- There is a way to index in huskell
  print("My name is Liza!" !! 4)
  --- Get head of a list simalr to pandas
  print( head [5,4,3,2,1])
  -- Lists can be compared via heads!
  print( [3,4,2] < [10,1,1])
  -- Cycles! infinities! very cool ( almost like a loop?)
  print( take 10 (cycle [1,2,3]))
  -- !! Note Haskell does not have for loops only cycles & recursions !! 
  -- Research Question: How to build a DAG? 
  -- Rem is similar to mod very cool
  print(var1 `rem` var2) 
  if var1 < var2
     then putStrLn "The first variable is smaller"
  else putStrLn "The second variable is smaller"
  print(multiply_all_but_zero var1 var2 3)
  -- over function overides multiplication by zero by returning 1
  print(multiply_all_but_zero 0 var1 var2)
  -- Question: will it override when zero is in a different location?
  print(multiply_all_but_zero var1 0 var1)
  -- Answer: No it will not 
  -- We can also define lambda functions to speed things up 
  print((\x-> x*0) 3)
  -- lets try multiplying all items in a list
  print(multiply_list [1..4])





