module Issue34

-- Select `Nat` and do a type search.
-- `Nat : Type` should be displayed
plusAssoc : (l, c, r : Nat) -> l `plus` (c `plus` r) = (l `plus` c) `plus` r
plusAssoc Z c r = Refl
plusAssoc (S l) c r = rewrite plusAssoc l c r in Refl
