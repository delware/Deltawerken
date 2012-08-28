accessing
columnClassFor: aColumn
	((aColumn respondsTo: #columnClass) and: [ aColumn columnClass notNil ])
		ifTrue: [ ^aColumn columnClass ].
	columnClass ifNil: [ ^'no-field' ].
	^ columnClass