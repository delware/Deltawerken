accessing
isNew: anObject
	super isNew: anObject.
	saveButton label: self saveText
