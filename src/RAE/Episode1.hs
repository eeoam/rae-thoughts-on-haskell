{-# LANGUAGE AllowAmbiguousTypes #-}

module RAE.Episode1 where

import Data.Proxy

type family F a where
    F Int = Bool
    F Char = Double

{- Does not compile
g :: F a -> ()
g _ = ()

x :: ()
x = g True
-}

g :: Proxy a -> F a -> ()
g _ _ = ()

x :: ()
x = g (Proxy :: Proxy Int) True

g' :: F a -> ()
g' _ = ()

y :: ()
y = g' @Int True

hr :: (forall a. Proxy a -> F a -> ()) -> ()
hr _ = ()

z = hr (\(_ :: Proxy b)(_ :: F b) -> (undefined :: b) `seq` ())

{- Does not compile 
hr2 :: (forall a. F a -> ()) -> ()
hr2 _ = ()

z2 = hr2 (\ @b (_ :: F b) -> (undefined :: b) `seq` ())
-}