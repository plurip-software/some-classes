{-# LANGUAGE MultiParamTypeClasses #-}

module Classes where

-- | ## Properties
-- 
-- 
-- 
class (Show a, Show b) => Parser a b where
    serialize :: a -> b
    parse     :: b -> Maybe a

class Property a b where
    success :: a -> b -> Either a b
    failure :: a -> b -> Either a b
    first   :: a -> b -> a
    second  :: a -> b -> b