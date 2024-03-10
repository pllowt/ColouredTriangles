import qualified Data.Map as Map

colourMap :: Map.Map (String) String
colourMap = Map.fromList [
    ("BB", "B"), 
    ("GR", "B"),
    ("RG", "B"),
    ("BR", "G"),
    ("RB", "G"),
    ("GG", "G"),
    ("BG", "R"), 
    ("GB", "R"), 
    ("RR", "R")]

lookupColour :: String -> Maybe String
lookupColour key = Map.lookup key colourMap
