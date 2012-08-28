accessing
contextFor: html
	self view ifNotNil: [ ^view ].
	^super contextFor: html