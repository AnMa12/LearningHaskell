maxim :: Integer -> Integer -> Integer
maxim x y = 
    if (x > y) 
        then x 
        else y

maxim3 :: Integer -> Integer -> Integer -> Integer
maxim3 x y z = maxim x (maxim y z)

maxim3let :: Integer -> Integer -> Integer -> Integer
maxim3let x y z =
    let
        u = maxim x y
    in
        maxim u z

maxim4let :: Integer -> Integer -> Integer -> Integer -> Integer
maxim4let x y z w = 
    let
        a = maxim x y
    in let 
        b = maxim a z
    in 
        maxim b w