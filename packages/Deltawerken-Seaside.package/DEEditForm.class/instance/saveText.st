accessing
saveText
	self isNew ifTrue: [ ^self saveTextNew ].
	^self saveTextExisting
