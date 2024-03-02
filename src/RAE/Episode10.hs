module RAE.Episode10 where

import Text.Read ( readMaybe )

f !x = 'x'
f' x = 'x'

z = case () of !x -> 'y'
z' = case undefined of !x -> 'y'
z'' = case undefined of x -> 'y'

z2 = let y = 5 in ()
z2' = let y = undefined in ()
z2'' = let !y = undefined in ()

z''' = case True of True -> 'y'
ziv = case True of False -> 'y'
zv = case undefined of False -> 'y'
zvi = case undefined of !x -> 'y'

z2iii = let y = undefined in ()

-- readMaybe :: Read a => String -> Maybe a
z2iv = let Just x = readMaybe "123" in (x :: Int)
z2v = let Just x = Nothing in (x :: Int)
z2vi = let Just x = Nothing in ()
z2vii = let False = True in ()
z2viii = let !False = True in ()
z2ix = let !(Just x) = Just undefined in ()
z2x = let !(Just !x) = Just undefined in ()