module PList(PList(PL),PList(Null),next,deleteItem,insertItem,isEmpty,showPriQueue) where

-- This module implements a recursive data type PList and functions for modifying it

import Data.Bool
import Data.List


data PList = PL Head Priority PList | Null deriving(Show,Eq,Ord)
type Head = Char
type Priority = Int

-- returns the highest priority item in the list (head)
next :: PList -> Head
next (PL h p Null) = h
next (PL h p (PL hh pp pps))
	| p <= pp = next (PL h p pps)
	| p > pp = next (PL hh pp pps)

-- deletes the item with highest priority
deleteItem :: PList -> PList
deleteItem (PL h p Null) = Null
deleteItem Null = Null
deleteItem (PL h p (PL hh pp pps))
	| p <= pp = PL hh pp pps
	| p > pp = (PL h p (deleteItem (PL hh pp pps)))

-- inserts new priority item while preserving the order of the current list
insertItem :: PList -> PList -> PList
insertItem p Null = p
insertItem (PL h p n) (PL hh pp nn)
	| p <= pp = PL h p (PL hh pp nn)
	| otherwise = PL (hh) (pp) (insertItem (PL h p n) (nn))

-- only True if list is empty
isEmpty :: PList -> Bool
isEmpty Null = True
isEmpty _ = False


-- showPriqueue, sorts the PList data type entries then outputs
-- the list in String form
-- outputs a priority-sorted list even with unsorted input
showPriQueue :: PList -> String
showPriQueue Null = ""
showPriQueue p = toHeadList $ sortBy comparePriorities $ showHelper p

-- returns a list of PLists to be sorted then printed
showHelper :: PList -> [PList]
showHelper Null = []
showHelper (PL h p ps) = (PL h p Null) : (showHelper ps)

-- compares Priority values so that Head values can be sorted
comparePriorities :: PList -> PList -> Ordering
comparePriorities (PL _ p _) (PL _ pp _)
	| p < pp = LT
	| otherwise = GT

-- separates Heads from a sorted list of PLists
toHeadList :: [PList] -> [Head]
toHeadList [] = []
toHeadList ((PL h _ _):ps) = h : (toHeadList ps)