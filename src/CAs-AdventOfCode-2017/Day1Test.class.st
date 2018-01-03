"
Tests for Day1
"
Class {
	#name : #Day1Test,
	#superclass : #TestCase,
	#category : #'CAs-AdventOfCode-2017-Tests'
}

{ #category : #'as yet unclassified' }
Day1Test >> invCaptcha [
	| res |
	res:= Day1 new invCaptcha: '1122'.
	self assert: res=3
]

{ #category : #tests }
Day1Test >> testInvCaptcha1111 [
	| res |
	res:= Day1 new invCaptcha: '1111'.
	self assert: res=4
]

{ #category : #tests }
Day1Test >> testInvCaptcha1122 [
	| res |
	res:= Day1 new invCaptcha: '1122'.
	self assert: res=3
]

{ #category : #tests }
Day1Test >> testInvCaptcha1234 [
	| res |
	res:= Day1 new invCaptcha: '1234'.
	self assert: res=0
]

{ #category : #tests }
Day1Test >> testInvCaptcha91212129 [
	| res |
	res:= Day1 new invCaptcha: '91212129'.
	self assert: res=9
]

{ #category : #tests }
Day1Test >> testInvCaptchaB1212 [
	| res |
	res := Day1 new invCaptchaB: '1212'.
	self assert: res = 6
]

{ #category : #tests }
Day1Test >> testInvCaptchaB12131415 [
	| res |
	res := Day1 new invCaptchaB: '12131415'.
	self assert: res = 4
]

{ #category : #tests }
Day1Test >> testInvCaptchaB1221 [
	| res |
	res := Day1 new invCaptchaB: '1221'.
	self assert: res = 0
]

{ #category : #tests }
Day1Test >> testInvCaptchaB123425 [
	| res |
	res := Day1 new invCaptchaB: '123425'.
	self assert: res = 4
]
