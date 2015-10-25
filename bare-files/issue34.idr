module Issue34

import Data.Vect

-- case split (`ctrl-alt-c`) on both `ys`
-- Should look like:
-- vZipWith : (a -> b -> c) -> Vect n a -> Vect n b -> Vect n c
-- vZipWith f [] [] = ?vZipWith_rhs_3
-- vZipWith f (x :: xs) (y :: ys) = ?vZipWith_rhs_1
vZipWith : (a -> b -> c) -> Vect n a -> Vect n b -> Vect n c
vZipWith f [] ys = ?vZipWith_rhs_1
vZipWith f (x :: xs) ys = ?vZipWith_rhs_2
