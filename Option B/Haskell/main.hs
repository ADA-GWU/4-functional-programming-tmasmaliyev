-- Function that accept list of any type and returns list with the type that corresponds to inputs'
removeEvens :: [a] -> [a]
-- Function Definition part
-- First, It zips the [1..] value with input array generating list of tuples such as
-- [(1, a1), (2, a2), (3, a3)]
-- Then filter function applied that checks if first element is not divisible by 2 (This intents to pick odd values)
-- Then apply `snd` to pick second value of tuple for giving list
removeEvens = map snd . filter (\(i, _) -> i `mod` 2 /= 0) . zip [1..]

-- Function that accept list of any type and returns list with the type that corresponds to inputs'
removeOdds :: [a] -> [a]
-- Function Definition part
-- First, It zips the [1..] value with input array generating list of tuples such as
-- [(1, a1), (2, a2), (3, a3)]
-- Then filter function applied that checks if first element is divisible by 2 (This intents to pick even values)
-- Then apply `snd` to pick second value of tuple for giving list
removeOdds = map snd . filter (\(i, _) -> i `mod` 2 == 0) . zip [1..]

-- Function that accept list of any type and returns list with the type that corresponds to inputs
removeMultiplesOfThree :: [a] -> [a]
-- Function Definition part
-- First, It zips the [1..] value with input array generating list of tuples such as
-- [(1, a1), (2, a2), (3, a3)]
-- Then filter function applied that checks if first element is not divisible by 3 
-- Then apply `snd` to pick second value of tuple for giving list
removeMultiplesOfThree = map snd . filter (\(i, _) -> i `mod` 3 /= 0) . zip [1..]

-- Function that accept Int and returns Int
lastRemainingNumber :: Int -> Int
-- Function Definition part
-- This part defines the logic of the function
-- It generates a list of numbers from 1 to n ,then calls `gameCycle` with the list and 0 as starting round 
-- Since `gameCycle` function returns list, `head` is provided to pick up first element in array
lastRemainingNumber n = head (gameCycle [1..n] 0)
  where
    gameCycle :: [Int] -> Int -> [Int]
    -- Function Definition part for `gameCycle`
    -- When the list of numbers contains only one element, then return that single elemented list
    gameCycle [x] _ = [x]  

    -- Recursive case that handles the game logic across multiple rounds.
    -- If the round is 0, then remove evens and continue with round 1
    -- If the round is 1, then remove odds and continue with round 2
    -- If the round is 2, then remove elements that are divisible by 3 and continue with round 0
    -- Since `otherwise` is not needed in this problem, the compiler requires this line, or will throw compilation error 
    gameCycle numbers round
        | round == 0 = gameCycle (removeEvens numbers) 1
        | round == 1 = gameCycle (removeOdds numbers) 2
        | round == 2 = gameCycle (removeMultiplesOfThree numbers) 0
        | otherwise   = error "Invalid round"

-- Main function, and type is `IO` which corresponds function performs input/output operations
main :: IO ()
-- Do function that allows for reading input values from user and print it on console
main = do
    n <- readLn :: IO Int
    
    let result = lastRemainingNumber n
    
    print result