--get as arugments a function and a list of functions
--and returns their composition
compuneList :: (b -> c) -> [(a -> b)] -> [(a -> c)]
compuneList f l = map function l
    where function funct = f.funct

--get an a element and a list of functions
--returns sa list of each function applied to a
aplicaList :: a -> [(a -> b)] -> [b]
aplicaList a l = map ($a) l

aplicaList2 :: a -> [(a -> b)] -> [b]
aplicaList2 a l = map function l 
    where function funct = funct a