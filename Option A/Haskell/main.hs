-- Function that accept list of any type and returns list with the type that corresponds to inputs'
reverseList :: [a] -> [a]
-- Function Definition parts
-- If list is empty, then output empty list
reverseList [] = []         
-- If not, then from the head of the list `x` to the tail of the list `xs`, recursively provide xs to `reverseList` function
-- Then, concatenate it with `x` (In this case, head of the list)
reverseList (x:xs) = reverseList xs ++ [x] 

-- Main function, and type is `IO` which corresponds function performs input/output operations
main :: IO ()
-- Main function definition that calls reverseList with corresponding input, and output the result in `console`.
main = print (reverseList [1, 2, 3, 4, 5])    