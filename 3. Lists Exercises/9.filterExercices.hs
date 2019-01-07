--arguments: a char and a list of [chars]
--returns the list of [chars] that contain the char
charElem :: Char -> [String] -> [String]
charElem a listOfChars = filter (a `elem`) listOfChars

--arguments: list o integers
--returns list of the ^2 of odds one
oddsSquareElem :: [Integer] -> [Integer]
oddsSquareElem l = map (^2) (filter odd l)

--with function composition
oddsSquareElemComp :: [Integer] -> [Integer]
oddsSquareElemComp = map (^2) . filter odd

--arguments: list of integers
--returns list of the ^2 of numbers of odds positions
--hint: use zip for number positions
--DE CE NU MERGE?!
--oddsPositionSqare :: [Int] -> [Int]
--oddsPositionSqare list = oddsPSwithPostionsPairs (zip list [1..length list])
--    where 
--        oddsPSwithPostionsPairs :: [(Int, Int)] -> [Int]
--        oddsPSwithPostionsPairs [(a,b)] = map (^2) (filter odd b)

oddsPositionSqare :: [Int] -> [Int]
oddsPositionSqare l = map (^2) (map snd (filter (odd . fst) (zip [0..length l] l)))

--write your own map and filter functions using recursion
myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (head : tail) = f head : myMap f tail
                
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter f (head : tail)
    | f head = head : myFilter f tail
    | otherwise = myFilter f tail