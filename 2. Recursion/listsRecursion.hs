halfEvenList :: [Int] -> [Int]
halfEvenList l
    | null l     = l
    | even h     = h `div` 2 : t'
    | otherwise  = t'
    where
        h  = head l
        t  = tail l
        t' = halfEvenList t

halfEvenListEq :: [Int] -> [Int]
halfEvenListEq [] = []
halfEvenListEq (h : t)
    | even h = h `div` 2 : t'
    | otherwise = t'
    where t' = halfEvenListEq t
    
    
-- shows the numbers from the list which are in min max interval  
inIntervalNumber :: Int -> Int -> Int ->  Bool
inIntervalNumber min max x =
    if (x >= min && x <= max)
        then True
        else False
    
inInterval :: Int -> Int -> [Int] -> [Int]
inInterval min max [] = []
inInterval min max (h : t)
    | inIntervalNumber min max h = h : t'
    | otherwise = t'
    where t' = inInterval min max t
    
-- shows the same thing but whithout aux methode
inIntervalEq :: Int -> Int -> [Int] -> [Int]
inIntervalEq  _ _ [] = [] 
inIntervalEq min max (h : t)
    | h >= min && h <= max = h : t'
    | otherwise = t'
    where t' = inIntervalEq min max t