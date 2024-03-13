import qualified Data.Map as Map
import qualified Data.Maybe as Maybe

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

patternSplitString :: String -> [String]
patternSplitString [x] = []
patternSplitString (x:y:xs) = [x, y] : patternSplitString (y:xs)

processString :: String -> String
processString s = concat $ map Maybe.fromJust $ map lookupColour $ patternSplitString s

triangle :: (String -> String) -> String -> String
triangle f s
    | length s == 1 = s
    | otherwise = triangle f (f s)
