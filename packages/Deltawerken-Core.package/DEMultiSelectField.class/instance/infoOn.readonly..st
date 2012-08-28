rendering
infoOn: canvas readonly: aBoolean
	aBoolean
		ifTrue: [ self infoOn: canvas text: self info ]
		ifFalse: [ self infoOn: canvas text: self editInfo ]
