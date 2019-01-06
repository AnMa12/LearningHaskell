fibonacciCases :: Integer -> Integer
fibonacciCases n 
    | n < 2 = n
    | otherwise = fibonacciCases (n - 1) + fibonacciCases (n - 2)

fibonacciEcuations :: Integer -> Integer
fibonacciEcuations 0 = 0
fibonacciEcuations 1 = 1
fibonacciEcuations 2 = 1
fibonacciEcuations n = fibonacciEcuations (n-1) + fibonacciEcuations (n - 2)
