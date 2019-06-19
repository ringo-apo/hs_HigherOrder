module Main where

import Lib

-- リスト : nからmまでの整数の和
sum_of_integer :: (Integer, Integer) -> Integer
sum_of_integer (n, m)
  | n > m     = 0
  | otherwise = n + sum_of_integer (n + 1, m)

-- 2 乗
square :: Num a => a -> a
square x = x * x

-- 3 乗
cube :: Num a => a -> a
cube x = x * x * x

-- 2 乗の和
sum_of_square :: (Integer, Integer) -> Integer
sum_of_square (n, m)
  | n > m     = 0
  | otherwise = square n + sum_of_square (n + 1, m)

-- 3 乗の和
sum_of_cube :: (Integer, Integer) -> Integer
sum_of_cube (n, m)
  | n > m     = 0
  | otherwise = cube n + sum_of_cube (n + 1, m)

sum_of :: (Integer -> Integer, Integer, Integer) -> Integer
sum_of (f, n, m)
  | n > m     = 0
  | otherwise = f n + sum_of (f, n + 1, m)


main :: IO ()
main = do
    print(sum_of_integer(1, 10))
    print(sum_of_integer(1, 100))

    print(sum_of_square(1, 10))
    print(sum_of_square(1, 100))
    print(sum_of_cube(1, 10))
    print(sum_of_cube(1, 100))

    print(sum_of (square, 1, 10))
    print(sum_of (cube, 1, 10))
