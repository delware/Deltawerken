accessing
showBlock
	showBlock ifNil: [ 
		self panel ifNotNil: [ ^[ :aSubject :aField | self show: aSubject field: aField ] ] ].
	^showBlock