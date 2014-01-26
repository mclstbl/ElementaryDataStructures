module StackTest where

-- the main function runs all tests for top, pop, push and isEmpty functions

import Stack
import Test.HUnit

topTest = TestCase( do 
	assertEqual "for ['a']," ('a') (top ['a'])
	assertEqual "for ['a','b','c']," ('a') (top ['a','b','c'])
	)

popTest = TestCase( do
	assertEqual "for ['a']," ("") (showStack (pop ['a']))
	assertEqual "for ['a','b','c']," ("bc") (showStack (pop ['a','b','c']))
	)

pushTest = TestCase( do
	assertEqual "for []," ("a") (showStack (push 'a' []))
	assertEqual "for ['a','b']," ("cab") (showStack (push 'c' ['a','b']))
	)

isEmptyTest = TestCase( do
	assertEqual "for []" (True) (isEmpty [])
	assertEqual "for ['a','b','c']" (False) (isEmpty ['a','b','c'])
	)

tests = TestList [TestLabel "topTest" topTest, TestLabel "popTest" popTest, TestLabel "pushTest" pushTest, TestLabel "isEmptyTest" isEmptyTest]

main = runTestTT tests
