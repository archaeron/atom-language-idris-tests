module Issue93

oneNamedPatam : (a : Nat) -> Nat
oneNamedPatam a = a

multipleNamedParams : (a, b, c, d : Nat) -> Nat
multipleNamedParams a b c = a + b + c
