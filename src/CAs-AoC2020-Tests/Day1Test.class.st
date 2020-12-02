Class {
	#name : #Day1Test,
	#superclass : #TestCase,
	#category : #'CAs-AoC2020-Tests'
}

{ #category : #samples }
Day1Test >> sample1 [
^#(1721
979
366
299
675
1456)
]

{ #category : #tests }
Day1Test >> testDay1 [
	| d res |
	d := Day1 new.
	res:= d find2020in: self sample1 .
self	assert: res equals: 514579
]
