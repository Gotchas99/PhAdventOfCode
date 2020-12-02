Class {
	#name : #Day2Test,
	#superclass : #TestCase,
	#category : #'CAs-AoC2020-Tests'
}

{ #category : #examples }
Day2Test >> sample [
^'1-3 a: abcde
1-3 b: cdefg
2-9 c: ccccccccc'
]

{ #category : #test }
Day2Test >> testCheckPwd [
	| parr res |
	parr := #(1 3 $a 'abcdeabc').
	res := Day2 new checkPwd: parr.
	self assert: res equals: true
]

{ #category : #test }
Day2Test >> testCheckPwd2 [
	| parr res |
	parr := #(2 9 $c 'ccccccccc').
	res := Day2 new checkPwd2: parr.
	self assert: res equals: false
]

{ #category : #tests }
Day2Test >> testCountValids [
	| d res |
	d := Day2 new.
	res := d countValids: self sample.
	self assert: res equals: 2
]

{ #category : #test }
Day2Test >> testParse [
	|  res corr |
	corr := #(1 3 $a 'abcdeabc').
	res := Day2 new parse: '1-3 a: abcdeabc'.
	self assert: res equals: corr
]
