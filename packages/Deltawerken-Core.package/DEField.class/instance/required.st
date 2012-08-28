accessing
required
	self validator ifNil: [ ^false ].
	^self validator required