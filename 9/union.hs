data PTItem = Param Int | Text String

isText :: PTItem -> Bool
isText (Text _) = True
isText (Param _) = False

isParam :: PTItem -> Bool
isParam (Param _) = True
isParam (Text _) = False

main = do
  print (isText (Text "A"))
  print (isText (Param 45))
