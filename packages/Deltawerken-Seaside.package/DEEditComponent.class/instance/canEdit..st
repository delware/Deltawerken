accessing
canEdit: aBoolean 
	aBoolean
		ifTrue: [ self beWritable ]
		ifFalse: [ self beReadonly ]