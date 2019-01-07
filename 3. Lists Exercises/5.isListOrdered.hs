import Test.QuickCheck

--comprehansion returns if a list is ordered
isListOrderedComp :: [Int] -> Bool
isListOrderedComp [] = True
isListOrderedComp [x] = True
isListOrderedComp (x: xs) = and[ a < b | (a,b) <- zip (x: xs) xs]

--recursion returns if a list is ordered or not
isListOrderedRec :: [Int] -> Bool
isListOrderedRec [] = True
isListOrderedRec [x] = True
isListOrderedRec (x: y : xs)
    | x >= y = False
    | otherwise = isListOrderedRec (y : xs)

--test if both methods are the same
test x = (isListOrderedComp x) == (isListOrderedRec x)