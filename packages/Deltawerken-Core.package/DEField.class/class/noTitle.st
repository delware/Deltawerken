accessing
noTitle
	| retVal |
	self = SEField ifTrue: [ ^'Field' ].
	retVal := self name.
	retVal size > 8 ifTrue: [ ^retVal copyFrom: 3 to: (retVal size - 5) ].
	^super noTitle