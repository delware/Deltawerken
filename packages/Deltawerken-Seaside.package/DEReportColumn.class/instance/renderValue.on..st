rendering
renderValue: row on: html
	(self formatBlock numArgs > 1)
		ifTrue: [ self formatBlock value: (self valueForRow: row) value: html ]
		ifFalse: [ super renderValue: row on: html ]
