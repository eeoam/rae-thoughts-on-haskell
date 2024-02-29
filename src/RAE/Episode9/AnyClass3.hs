{-# LANGUAGE DerivingVia #-}

module RAE.Episode9.AnyClass3 where

class Pretty a where
    ppr :: a -> String
  
newtype ShowPretty a = ShowPretty a

instance Show a => Pretty (ShowPretty a) where
    ppr (ShowPretty x) = show x

data T = MkT1 Int | MkT2 Bool
    deriving stock Show
    deriving Pretty via ShowPretty T