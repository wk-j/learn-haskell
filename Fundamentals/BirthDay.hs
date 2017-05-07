-- (script)

import Data.Time 

dateStr = "10/10/1910"
format = "%d/%d/%Y"
date = parseTimeM False defaultTimeLocale format dateStr :: IO UTCTime 
maybeDate = parseTimeM False defaultTimeLocale format dateStr :: Maybe Day

main = do
    print maybeDate