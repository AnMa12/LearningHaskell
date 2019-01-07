--generic functions
--arguments: list of pairs returns first element
firstEl :: [(a,b)] -> [a]
firstEl l = map fst l

--arguments: a list o lists of integers and returns
--the list of the sums of each list elements
sumList :: [Int] -> Int
sumList [] = 0
sumList (h : t) = h + sumList t

sumListOfLists :: [[Int]] -> [Int]
sumListOfLists l = map sumList l

--arguments: a integer list and returns a list
--where the even numbers are /2 and odds *2
multiplyOddsdivideEvens :: [Integer] -> [Integer]
multiplyOddsdivideEvens [] = []
multiplyOddsdivideEvens(h : t)
    | even h = h `div` 2 : t'
    | otherwise = h * 2 : t'
    where t' = multiplyOddsdivideEvens t
    
--the same function with map
mOdE :: Integer -> Integer
mOdE x =
    if even x
        then x `div` 2
        else x * 2

mOdEmap :: [Integer] -> [Integer]
mOdEmap l = map mOdE l