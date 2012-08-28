accessing
checkAll
	checkAll ifNil: [ ^self isNew ].
	^ checkAll