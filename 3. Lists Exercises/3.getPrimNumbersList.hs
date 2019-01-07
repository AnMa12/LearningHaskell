import Test.QuickCheck

factorsComp :: Int -> [Int]
factorsComp x = [ div | div <- [1..x] , x `rem` div == 0]

isPrim :: Int -> Bool
isPrim x =
    if(length(factorsComp x) == 2)
        then True
        else False


--using factorsComp and isPrim
--return list of prim numbers between [2..n]
primNumbersList :: [Int] -> [Int]
primNumbersList l = [ x | x <- l, isPrim x == True]
