-- https://www.youtube.com/watch?v=9Da_Jjdbg50&list=PLyzwHTVJlRc9QcF_tdqc9RdxJED8Mvyh1&index=5&pp=iAQB
module RAE.Episode4 where

type family F a
type family UnF a

f :: forall b. (UnF (F b) ~ b) => F b -> ()
f = error "urk"

g :: forall a. (UnF (F a) ~ a) => a -> ()
g _ = f (undefined :: F a)