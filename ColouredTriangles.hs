import qualified Data.Map as Map

colourMap :: Map.Map (String, String, String) String
colourMap = Map.fromList [
    (("BB", "GR", "RG"), "B"),
    (("BR", "RB", "GG"), "G"),
    (("BG", "GB", "RR"), "R")]
