accessing
columnClass
	columnClass ifNil: [ ^'Field' ].
	^ columnClass