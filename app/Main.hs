module Main where

import Lib

-- リスト : nからmまでの整数の和
sum_of_integer :: (Integer, Integer) -> Integer
sum_of_integer (n, m)
  | n > m     = 0
  | otherwise = n + sum_of_integer (n + 1, m)


main :: IO ()
main = do
    print(sum_of_integer(1, 10))
