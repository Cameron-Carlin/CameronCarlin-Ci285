{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
module Home where

import Foundation
import Yesod.Core

getHomeR :: Handler Html
getHomeR = defaultLayout $ do
    setTitle "Cameron's Calculator"
    [whamlet|
        <p>
            <a href=@{AddR 5 7}>HTML addition
        <p>
            <a href=@{AddR 5 2}?_accept=application/json>JSON addition
        <p>
            <a href=@{SubR 4 7}>HTML subtraction
        <p>
            <a href=@{SubR 18 20}?_accept=application/json>JSON subtraction
        <p>
            <a href=@{DivR 5 24}>HTML division
        <p>
            <a href=@{DivR 5 2}?_accept=application/json>JSON division
        <p>
            <a href=@{MulR 3 26}>HTML multiplication
        <p>
            <a href=@{MulR 19 5}?_accept=application/json>JSON multiplication
    |]
