module Test

-- An error should be displayed after typechecking
a : (String -> Either String String) -> String
a b =
	case b of
		Left err => err
		Right v => v
