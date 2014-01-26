module ArrayStackTest where

-- the main function runs all tests for top, pop, push and isEmpty functions
-- this implements the same tests as Stack.hs and they produce the same results

import ArrayStack
import Test.HUnit

topTest = TestCase( do 
	assertEqual "for ['a']," ('a') (top ['a'])
	assertEqual "for ['a','b','c']," ('a') (top ['a','b','c'])
	)

popTest = TestCase( do
	assertEqual "for ['a']," ("") (showArrayStack (pop ['a']))
	assertEqual "for ['a','b','c']," ("bc") (showArrayStack (pop ['a','b','c']))
	)

pushTest = TestCase( do
	assertEqual "for []," ("a") (showArrayStack (push 'a' []))
	assertEqual "for ['a','b']," ("cab") (showArrayStack (push 'c' ['a','b']))
	)

isEmptyTest = TestCase( do
	assertEqual "for []" (True) (isEmpty [])
	assertEqual "for ['a','b','c']" (False) (isEmpty ['a','b','c'])
	)

tests = TestList [TestLabel "topTest" topTest, TestLabel "popTest" popTest, TestLabel "pushTest" pushTest, TestLabel "isEmptyTest" isEmptyTest]

main = runTestTT tests
