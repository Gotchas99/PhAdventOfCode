Class {
	#name : #Day3Test,
	#superclass : #TestCase,
	#instVars : [
		'd3'
	],
	#category : #'CAs-AoC2020-Tests'
}

{ #category : #examples }
Day3Test >> sample [
^'..##.......
#...#...#..
.#....#..#.
..#.#...#.#
.#...##..#.
..#.##.....
.#.#.#....#
.#........#
#.##...#...
#...##....#
.#..#...#.#'
]

{ #category : #running }
Day3Test >> setUp [
	d3:= Day3 new map: self sample.

	
]

{ #category : #tests }
Day3Test >> testCalcSlopes [
	| res |
	res := d3 countAllSlopes.
	self assert: res equals: 336
]

{ #category : #'as yet unclassified' }
Day3Test >> testCountEmptyList [
	| res |
	res := d3 countTopRow: #() pos: 1.
	self assert: res equals: 0
]

{ #category : #'as yet unclassified' }
Day3Test >> testCountList1 [
	| res |
	res := d3 countTopRow: #('..##.......') pos: 1.
	self assert: res equals: 0
]

{ #category : #'as yet unclassified' }
Day3Test >> testCountList2 [
	| res |
	res := d3 countTopRow: #('..##.......') pos: 4.
	self assert: res equals:1
]

{ #category : #'as yet unclassified' }
Day3Test >> testCountList3 [
	| res |
	res := d3 countTopRow: #('..##.......'  '..##.......') pos: 1.
	self assert: res equals: 1
]

{ #category : #'as yet unclassified' }
Day3Test >> testCountListSample [
	| res |
	res := d3 countInMap.
	self assert: res equals: 7
]

{ #category : #tests }
Day3Test >> testTreePos1 [
	| res |
	res := d3 treeAtPos: 1 in: '..##.......'.
	self deny: res
]

{ #category : #tests }
Day3Test >> testTreePos13 [
	| res |
	res := d3 treeAtPos: 13 in: '..##.......'.
	self deny: res
]

{ #category : #tests }
Day3Test >> testTreePos14 [
	| res |
	res := d3 treeAtPos: 14 in: '..##.......'.
	self assert: res
]

{ #category : #tests }
Day3Test >> testTreePos2 [
		| res |
	res := d3 treeAtPos: 3 in: '..##.......'.
	self assert: res
]
