module RAE.Episode4 where

type family F a
type family UnF a

f :: forall b. (UnF (F b) ~ b) => F b -> ()
f = error "urk"

g :: forall a. (UnF (F a) ~ a) => a -> ()
g _ = f (undefined :: F a)