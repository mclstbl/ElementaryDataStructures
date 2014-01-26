module Stack (Stack,top,pop,push,isEmpty,showStack) where

-- This module is an implementation of Stack using Haskell's list operators

import Data.Bool

-- type synonym for a Stack
type Stack = [Char]

top :: Stack -> Char
top s = head s

pop :: Stack -> Stack
pop s = tail s

push :: Char -> Stack -> Stack
push c s = c : s

isEmpty :: Stack -> Bool
isEmpty [] = True
isEmpty _ = False

showStack :: Stack -> String
showStack [] = ""
showStack (s:ss) = s : showStack ss