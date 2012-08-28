accessing
subject: aSubject isNew: aIsNew 
	self isNew: aIsNew.
	isNew 
		ifTrue: [ subject := aSubject ]
		ifFalse: [ 
			subject := aSubject copy.
			original := aSubject ].
	expired := false.
	fieldComponent ifNotNil: [ self fieldComponent clearCache ]