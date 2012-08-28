rendering
renderSeparatorOn: canvas
	self separatedBy
		ifNil: [ canvas break ]
		ifNotNil: [ separatedBy value: canvas ]