tags
brushFor: aSubject on: canvas
	| retVal |
	retVal := (self brushOn: canvas)
		value: (self value: aSubject);
		callback: [ :value| self postValue: value subject: aSubject ];
		yourself.
	self fieldSize
		ifNotNil: [ retVal size: self fieldSize ].
	self tabIndex ifNotNil: [ retVal tabIndex: self tabIndex ].
	^retVal