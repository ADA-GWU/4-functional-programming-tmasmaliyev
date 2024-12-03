# Assigment 4
-------------

Option A:
---------

## Problem Statement:
Choose 2 programming languages: one imperative, another functional. Write a function that reverses the given list (array) without any built-in reverse function (means, you need to use very basic commands of the language. in functional programming, use basic list operations).

Example: Input: [1,2,3,4,5] Output: [5,4,3,2,1]

## Approach
- Imperative programming language
For this task, I chose `C++` programming language. 

The approach was to loop array by `size / 2` and replace the values of `left-most` pointer with the `right-most` pointer of array and output `result`.

In `./Option A/C++/main.cpp`, I added implementation that reverses array and explanation of every single code.  

-- Functional programming language
For this task, I chose `Haskell` programming language.

The approach was to go array `recursively` and return result by providing **reverseList** (recursive call)  + `head` of list.  

In `./Option A/Haskell/main.hs`, I added implementation that reverses array and explanation of every single code.

Option B:
---------

## Problem Statement
Solve the following e-Olymp problem using both of the languages: https://www.eolymp.com/en/problems/1964

## Approach
-- Imperative programming language

For this task, I chose `C++` programming language.

The approach was to create rounds in the following way:

- 0 - Remove even placed index values
- 1 - Remove odd placed index values
- 2 - Remove index values which are divisible by 3

At first, it starts from `0` with general purpose `vector` and continues to go by `(roundType + 1) % 3`. Then, for each round, it does specific `filtering` to select chosen ones and add them `filtering` vector. After that, the `filtering` vector is set to general purpose `vector`. This continues until `vector` has 1 element left.

In `./Option B/C++/main.cpp`, I added implementation that does these functionalites and explanation of every single code.
By **copying** and **pasting** this code on the e-Olymp task, it passes `97 %`. 

-- Functional programming language

For this task, I chose `Haskell` programming language.

The approach was to create rounds in the following way:

- 0 - Remove even placed index values
- 1 - Remove odd placed index values
- 2 - Remove index values which are divisible by 3

The approach was to go array `recursively` starting with round `0`. Then check corresponding `logic funtion` to be performed such as `removeEven`, `removeOdds` and `removeMultipliesOfThree`. In each `recursive` call, round changes accordingly. This process goes until array has `single element left`.

In `./Option B/Haskell/main.hs`, I added implementation that does these functionalites and explanation of every single code.
By **copying** and **pasting** this code on the e-Olymp task, it passes `76 %`. 