processing
actOn: anObject context: aContext
	self action ifNotNil: [ ^self action value: anObject value: aContext ]