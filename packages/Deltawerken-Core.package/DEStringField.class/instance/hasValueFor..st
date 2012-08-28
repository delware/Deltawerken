rendering
hasValueFor: aSubject
	| value |
	value := self value: aSubject.
	^value notNil and: [ value notEmpty ]
