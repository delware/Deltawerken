initialization
updateButtons
	self readonly 
		ifTrue: [ self form defaultButton: self cancelButton ]
		ifFalse: 
			[ self form defaultButton: self saveButton.
			self hasCancel 
				ifTrue: [ self form addButton: self cancelButton ]
				ifFalse: [ self form removeButton: self cancelButton ] ]