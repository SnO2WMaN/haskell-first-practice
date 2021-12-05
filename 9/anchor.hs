data Anchor = A {aUrl :: String, aLabel :: String}

compileAnchor :: Anchor -> String
compileAnchor A {aUrl = u, aLabel = l} = "<a href=\"" ++ u ++ "\">" ++ l ++ "</a>"

anchorUrl :: Anchor -> String
anchorUrl = aUrl

instance Eq Anchor where
  (A u l) == (A u' l') = (u == u') && (l == l')

main = do
  print $ compileAnchor (A "http://example.com" "Example")
  print $ A "http://example.com" "Example" == A "http://example.com" "Example"
  print $ A "http://example.com" "Example" == A "http://example2.com" "Example2"
