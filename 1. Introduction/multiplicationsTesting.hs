import Test.QuickCheck

myInt = 5555555555555555555555555555555555555555555555555555555555555555555555555555555555555

double :: Integer -> Integer
double x = x+x

triple :: Integer -> Integer
triple x = x+x+x

penta :: Integer -> Integer
penta x = x+x+x+x+x

test x = (double x + triple x) == (penta x)