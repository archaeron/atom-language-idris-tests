module Foo

import Data.Vect

-- `ctrl-alt-a` on  `addClause`
-- `addClause xs ys = ?addClause_rhs` should be inserted
addClause : Vect n a -> Vect m a -> Vect (n + m) a

-- `ctrl-shift-p`, type `Language Idris: Holes`
-- The hole for `?showHoles_rhs` should be displayed in a panel below.
showHoles : Vect n a -> Vect m a -> Vect (n + m) a
showHoles xs ys = ?showHoles_rhs
