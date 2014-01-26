module ArrayStack (ArrayStack,top,pop,push,isEmpty,showArrayStack) where

-- This module is an implementation of ArrayStack using my own functions

import Data.Bool

-- type synonym for a ArrayStack
type ArrayStack = [Char]

top :: ArrayStack -> Char
top (a:as) = a

pop :: ArrayStack -> ArrayStack
pop (a:as) = as

push :: Char -> ArrayStack -> ArrayStack
push c s = c : s

isEmpty :: ArrayStack -> Bool
isEmpty [] = True
isEmpty _ = False

showArrayStack :: ArrayStack -> String
showArrayStack [] = ""
showArrayStack (s:ss) = s : showArrayStack ss