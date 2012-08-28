accessing
fields
	fields ifNil: [ fields := self createFields ].
	^fields