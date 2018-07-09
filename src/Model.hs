module Lib where

{-# LANGUAGE DeriveGeneric     #-}
{-# LANGUAGE OverloadedStrings #-}

import Control.Monad
import Data.Aeson hiding (json)
import Data.Monoid ((<>))
import Data.Text (Text, pack)
import GHC.Generics
import System.Random

data User = User
    { userId :: !Int
    , userName :: !Text
    } deriving (Generic, Show)

instance ToJSON User
instance FromJSON User

newtype UserDb = UserDb (IntMap User)
    deriving Typeable

data Task = Task
    { description :: !Text
    , repeating   :: !Bool
    }

data TaskList = TaskList
    { inProgress :: Maybe Task
    , tasks :: ![Task]
    , taskCount :: !Int
    }

newtype UserLists = UserDb (IntMap [TaskList])
    deriving Typeable

askDice :: TaskList -> IO TaskList
askDice = undefined

finishTask :: Task -> TaskList -> TaskList
askDice = undefined


