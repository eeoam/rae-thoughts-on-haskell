-- https://www.youtube.com/watch?v=ZXtdd8e7CQQ&list=PLyzwHTVJlRc9QcF_tdqc9RdxJED8Mvyh1&index=6&pp=iAQB

{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE AllowAmbiguousTypes #-}

module RAE.Episode5 where

class Cover a b | a -> b
instance Cover Int b => Cover Int b

data A
instance Show A where
    show _ = "A"

data B
instance Show B where
    show _ = "B"

class IsInt int
instance int ~ Int => IsInt int

f :: forall a b c int. (Show a, Show b, Show c, Cover int a, Cover int b, Cover int c, IsInt int) => String
f = show (undefined :: c)

x = f @A @B