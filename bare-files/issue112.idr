module Issue112

data SnocList : List a -> Type where
  Empty : SnocList []
  Snoc : {xs : List a} -> {x : a} -> SnocList (xs ++ [x])

snocList : (xs : List a) -> SnocList xs
snocList [] = Empty
snocList (x :: xs) with (snocList xs)
  snocList (x :: []) | Empty = Snoc {xs = []} {x = x}
  snocList (x :: (ys ++ [y])) | Snoc = Snoc {xs = x :: ys} {x = y}

palindrome : DecEq a => List a -> Bool
palindrome [] = True
palindrome (x :: xs) with (snocList xs)
  palindrome (x :: []) | Empty = True
  palindrome (x :: (ys ++ [y])) | Snoc = ?palindrome_rhs_2
