{-# LANGUAGE DeriveAnyClass #-}

module RAE.Episode9.AnyClass1 where

class Pretty a where
    ppr :: a -> String
    default ppr :: Show a => a -> String
    ppr = show

data T = MkT1 Int | MkT2 Bool
    deriving stock Show
    deriving anyclass Pretty