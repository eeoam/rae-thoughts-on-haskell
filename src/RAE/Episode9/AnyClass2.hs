{-# LANGUAGE DeriveAnyClass #-}

module RAE.Episode9.AnyClass2 where

import Data.List ( intercalate )

class Pretty a where
    ppr :: a -> String
    ppr x = pprs [ x ]

    pprs :: [ a ] -> String
    pprs xs = "[" ++ intercalate "," (map ppr xs) ++ "]"

    {-# MINIMAL ppr | pprs #-}

data T = MkT1 Int | MkT2 Bool
    deriving anyclass Pretty