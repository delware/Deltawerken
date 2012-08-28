validating
format: aValue
	formatBlock ifNil: [ ^super format: aValue ].
	^formatBlock value: aValue