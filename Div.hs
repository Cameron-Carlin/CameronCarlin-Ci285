{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
{-# LANGUAGE TemplateHaskell   #-}

module Div where

import Foundation
import Yesod.Core

getDivR :: Int -> Int -> Handler TypedContent
getDivR x y = selectRep $ do
    provideRep $ defaultLayout $ do
        setTitle "Division"
        [whamlet|#{x} / #{y} = #{z}|]
    provideJson $ object ["result" .= z]
  where
    z = divi x y

divi :: Int -> Int -> Double
divi x y = (fromIntegral x) / (fromIntegral y)
