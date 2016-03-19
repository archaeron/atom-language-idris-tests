module Issue93

oneNamedPatam : (a : Nat) -> Nat
oneNamedPatam a = a

-- multiple named parameters should be correctly highlighted
multipleNamedParams : (a, b, c : Nat) -> Nat
multipleNamedParams a b c = a + b + c
