module Issue112

data SnocList : List a -> Type where
  Empty : SnocList []
  Snoc : {xs : List a} -> {x : a} -> SnocList (xs ++ [x])

snocList : (xs : List a) -> SnocList xs
snocList [] = Empty
snocList (x :: xs) with (snocList xs)
  snocList (x :: []) | Empty = Snoc {xs = []} {x = x}
  snocList (x :: (ys ++ [y])) | Snoc = Snoc {xs = x :: ys} {x = y}

-- click on last `palindrome` and press `ctrl+alt+w`. This should insert
-- `palindrome (x :: (ys ++ [y])) | Snoc | with_pat = ?palindrome_rhs`
palindrome : DecEq a => List a -> Bool
palindrome [] = True
palindrome (x :: xs) with (snocList xs)
  palindrome (x :: []) | Empty = True
  palindrome (x :: (ys ++ [y])) | Snoc with (_)
    palindrome (x :: (ys ++ [y])) | Snoc | with_pat = ?palindrome_rhs
