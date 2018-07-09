import Model

import Web.Spock

type Api = SpockM () () () ()

type ApiAction a = SpockAction () () () a

app :: Api
app = do
    --"register"
    --"addlist"
    get "getlist" $ do
        error "Not implemented"
    post "register" $ do
        mp <- jsonBody :: ApiAction (Maybe Person)
        case mp of
            Nothing -> errorJson 1 "Failed to parse request body as Person"
            Just p -> do
                error "Not implemented"