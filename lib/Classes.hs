module Main (main) where

-- | ## Properties
-- 
-- 
-- 
class (Show a, Show b) => Parser a b where
    serialize :: a -> b
    parse     :: b -> Maybe a

class Parser a String => Parser (StringParser a) where
    stringify :: a -> String
    parse     :: String -> Maybe a

class Property a b where
    success :: a -> b -> Either a b
    failure :: a -> b -> Either a b
    first   :: a -> b -> a            --^ The choice between two options is the main property of the boolean type 
                                      --^ the first x y and the True constructor 
    second  :: a -> b -> b            --^ 