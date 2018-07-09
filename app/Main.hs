import Lib

import System.Environment (getArgs)
import Web.Spock
import Web.Spock.Config

main :: IO ()
main = do
    args <- getArgs
    let port = case args of
        [p] -> read p
        _ -> 8080
    spockCfg <- defaultSpockCfg () PCNoDatabase ()
    runSpock port (spock spockCfg app)