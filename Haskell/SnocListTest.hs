module SnocListTest where

-- the main function runs all tests for peek, enqueue, dequeue and isEmpty functions

import SnocList
import SnocList(SnocList(SL),SnocList(Null))
import Test.HUnit

peekTest = TestCase( do 
	assertEqual "for (SL 'a' Null)," ('a') (peek (SL 'a' Null))
	assertEqual "for (SL 'a' Null)," ('a') (peek (SL 'a' (SL 'b' Null)))
	)

enqueueTest = TestCase( do
	assertEqual "for (Null)," ("b") (showQueue (enqueue 'b' Null))
	assertEqual "for (SL 'b' Null)," ("ba") (showQueue (enqueue 'a' (SL 'b' Null)))
	assertEqual "for (SL 'b' Null)," ("dcba") (showQueue (enqueue 'a' (SL 'b' (SL 'c' (SL 'd' Null)))))
	)

dequeueTest = TestCase( do
	assertEqual "for (SL 'b' Null)," ("") (showQueue (dequeue (SL 'b' Null)))
	assertEqual "for (SL 'b' (SL 'a' Null))," ("a") (showQueue(dequeue (SL 'b' (SL 'a' Null))))
	)

isEmptyTest = TestCase( do
	assertEqual "for (Null)" (True) (isEmpty Null)
	assertEqual "for (SL 'a' Null)" (False) (isEmpty (SL 'a' Null))
	)

tests = TestList [TestLabel "peekTest" peekTest, TestLabel "enqueueTest" enqueueTest, TestLabel "dequeueTest" dequeueTest, TestLabel "isEmptyTest" isEmptyTest]

main = runTestTT tests
