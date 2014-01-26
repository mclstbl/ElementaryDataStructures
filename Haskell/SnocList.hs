module SnocList (SnocList(SL),SnocList(Null),peek,dequeue,enqueue,isEmpty,showQueue) where

-- This module is an implementation of a Queue

import Data.Bool

-- data structure for SnocLists
-- each one could either be a SnocList or an empty list (Null)
data SnocList = SL Head SnocList | Null deriving(Show,Eq)
type Head = Char
 
-- returns the current head of the list (next in queue)
peek :: SnocList -> Head
peek (SL h s) = h

-- removes the head of the list
dequeue :: SnocList -> SnocList
dequeue (SL h s) = s

-- adds a character to the end of the list
enqueue :: Char -> SnocList -> SnocList
enqueue c Null = SL c Null
enqueue c (SL h p) = SL c (SL h p)

-- only true if list is empty
isEmpty :: SnocList -> Bool
isEmpty Null = True
isEmpty s = False

-- shows SnocList as a String = [Char]
showQueue :: SnocList -> String
showQueue Null = ""
showQueue q = showHelper q

-- showHelper turns a SnocList into a list of Chars
-- It displays as a string because String = [Char]
showHelper :: SnocList -> [Char]
showHelper (SL h Null) = [h]
showHelper (SL h q) = showHelper q ++ [h]
