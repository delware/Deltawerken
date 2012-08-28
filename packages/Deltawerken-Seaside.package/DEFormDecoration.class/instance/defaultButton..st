accessing
defaultButton: anObject
	defaultButton ifNotNil: [ self removeButton: defaultButton ].
	defaultButton := anObject.
	self addButton: defaultButton