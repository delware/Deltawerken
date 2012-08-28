accessing
fullUpdate
	self validator ifNil: [ ^false ].
	^self validator fullUpdate