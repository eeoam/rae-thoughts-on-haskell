-- | https://www.youtube.com/watch?v=l5veKgGxXd4&list=PLyzwHTVJlRc9QcF_tdqc9RdxJED8Mvyh1&index=4&pp=iAQB

{-# LANGUAGE ImpredicativeTypes #-}

module RAE.Episode3 where

type family F a where
    F (a -> b) = a -> b

type family Id a where
    Id a = a

{- does not compile!
f :: Id (forall a. a -> a) -> Char
f x = x 'z'
-}

f :: (forall a. a -> a) -> Char
f x = x 'z'