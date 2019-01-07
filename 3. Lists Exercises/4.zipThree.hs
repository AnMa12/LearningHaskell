--zipThree like zip but with 3 lists
zipThree :: [Int] -> [Int] -> [Int] -> [(Int, Int, Int)]
zipThree aList bList cList = [(a,b,c) | a <- aList, b <- bList, c <- cList]

--zipThree using only map and zip