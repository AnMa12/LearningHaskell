--Ex1: functions which counts strict positive numbers in a list
positiveNumbersCountRec :: [Int] -> Int
positiveNumbersCountRec [] = 0
positiveNumbersCountRec (h : t)
    | h > 0 = 1 + t'
    | otherwise = t'
    where t' = positiveNumbersCountRec t
    
--Ex1: with list description
positiveNumbersCountDesc :: [Int] -> Int
positiveNumbersCountDesc l = length[ x | x <- l, x > 0]

--Ex2: functions which returns odd number positions list
getElementPosition :: Int -> [Int] ->  Int
getElementPosition _ [] = -1
getElementPosition x (h : t)
    | x == h = 1 + t'
    | otherwise = t'
    where t' = getElementPosition x t