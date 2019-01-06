import Test.QuickCheck

factorsComp :: Int -> [Int]
factorsComp x = [ div | div <- [1..x] , x `rem` div == 0]

--test if number is prim using factorsComp 
--which returns a list of divisors
isPrim :: Int -> Bool
isPrim x =
    if(length(factorsComp x) == 2)
        then True
        else False
