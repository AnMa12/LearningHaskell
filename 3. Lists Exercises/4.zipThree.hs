zipThree :: [Int] -> [Int] -> [Int] -> [(Int, Int, Int)]
zipThree aList bList cList = [(a,b,c) | a <- aList, b <- bList, c <- cList, a == b && b == c]