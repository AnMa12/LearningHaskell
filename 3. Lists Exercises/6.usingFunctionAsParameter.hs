cmp :: Int -> Int -> Bool
cmp a b = a<b

divis :: Int -> Int -> Bool
divis a b = b `rem` a == 0

lexi :: [Char] -> [Char] -> Bool
lexi a b = a < b

ord :: [a] -> (a->a->Bool)-> Bool
ord [] _ = True
ord [x] _ = True
ord (x:y:xs) f = f x y && ord (y:xs) f
