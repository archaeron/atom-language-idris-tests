module Test

import Data.Vect

-- `ctrl-alt-a` on `addMatrix` -> clause should appear below type signature
addMatrix : Num numType => Vect rows (Vect cols numType)
                           -> Vect rows (Vect cols numType)
                           -> Vect rows (Vect cols numType)
