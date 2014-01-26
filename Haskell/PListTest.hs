module PListTest where

-- main function runs all tests for next, deleteItem, insertItem and isEmpty functions

import PList
import PList(PList(PL),PList(Null))
import Test.HUnit

nextTest = TestCase( do 
	assertEqual "for (PL 'a' 1 Null)," ('a') (next (PL 'a' 1 Null))
	assertEqual "for (PL 'a' 3 (PL 'b' 4 (PL 'c' 1 Null)))," ('c') (next (PL 'a' 3 (PL 'b' 4 (PL 'c' 1 Null))))
	)

deleteItemTest = TestCase( do
	assertEqual "for (Null)," ("") (showPriQueue (deleteItem Null))
	assertEqual "for (PL 'a' 1 Null)," ("") (showPriQueue (deleteItem (PL 'a' 1 Null)))
	assertEqual "for (PL 'a' 4 (PL 'b' 1 (PL 'c' 3 (PL 'd' 2 Null))))," ("dba") (showPriQueue (deleteItem (PL 'a' 4 (PL 'b' 3 (PL 'c' 1 (PL 'd' 2 Null))))))
	)

insertItemTest = TestCase( do
	assertEqual "for (PL 'a' 3 Null) (PL 'b' 2 Null)," ("ba") (showPriQueue (insertItem (PL 'a' 3 Null) (PL 'b' 2 Null)))
	assertEqual "for (PL 'b' 1 Null) (Null))," ("b") (showPriQueue (insertItem (PL 'b' 1 Null) (Null)))
	)

isEmptyTest = TestCase( do
	assertEqual "for (Null)" (True) (isEmpty Null)
	assertEqual "for (PL 'a' 1 Null)" (False) (isEmpty (PL 'a' 1 Null))
	)

tests = TestList [TestLabel "nextTest" nextTest, TestLabel "deleteItemTest" deleteItemTest, TestLabel "insertItemTest" insertItemTest, TestLabel "isEmptyTest" isEmptyTest]

main = runTestTT tests
