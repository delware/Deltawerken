accessing
createFieldComponent
	self displayTable ifTrue: [ ^self builder createTableComponent ].
	^self builder createDivsComponent