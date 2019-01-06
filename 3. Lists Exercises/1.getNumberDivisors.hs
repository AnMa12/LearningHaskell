import Test.QuickCheck
--using haskell comprehension list define
--factors n returns a lists with the positive n's divisors

--recursion method
factorsRec :: Int -> [Int]
factorsRec 0 = []
factorsRec n = factorsAux n [1..n]
    where 
        factorsAux :: Int -> [Int] -> [Int]
        factorsAux _ [] = []
        factorsAux x (h : t)
            | x `rem` h == 0 = h : t'
            | otherwise = t'
            where t' = factorsAux x t

--comprehension method
factorsComp :: Int -> [Int]
factorsComp x = [ div | div <- [1..x] , x `rem` div == 0]

--test if both methods are the same 
test x = (factorsComp x) == (factorsRec x)