module AtomTest

-- `ctrl-alt-s` on `?back` -> `\__pi_arg => \__pi_arg1 => (__pi_arg1)` should be inserted
foo : Nat -> Nat -> Nat
foo = ?back
