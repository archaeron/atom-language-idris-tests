module Issue83

import Data.Vect

Note : Type
Note = Int

times: (n: Nat) -> {auto prf: n >= 1 = True} -> Vect m Note -> Vect (m*n) Note
times n xs =
    concat $ explode n xs where
        explode: (l: Nat) -> Vect k Note -> Vect k (Vect l Note)
        explode l xs =
            do
                elem <- xs
                return (replicate l elem)
