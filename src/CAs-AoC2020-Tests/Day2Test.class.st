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

{ #category : #tests }
Day2Test >> testCountValids [
	| d res |
	d := Day2 new.
	res := d countValids: self sample.
	self assert: res equals: 2
]
