module Issue83

import Data.Vect

Note : Type
Note = Int

-- select `replicate` and press `ctrl-alt-d` and the comunentation for
-- `Data.Vect.replicate` should be shown and not `Prelude.List.replicate`.
times: (n: Nat) -> {auto prf: n >= 1 = True} -> Vect m Note -> Vect (m*n) Note
times n xs =
    concat $ explode n xs where
        explode: (l: Nat) -> Vect k Note -> Vect k (Vect l Note)
        explode l xs =
            do
                elem <- xs
                return (replicate l elem)
