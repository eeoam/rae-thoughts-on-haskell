-- https://www.youtube.com/watch?v=65GWGc5LNxc&list=PLyzwHTVJlRc9QcF_tdqc9RdxJED8Mvyh1&index=3&pp=iAQB

module RAE.Episode2 where

import Data.Kind

class C a where
    data CD k (a :: k) :: k -> *

instance C (Maybe a) where
    data CD k (a :: k -> *) :: (k -> *) -> *
