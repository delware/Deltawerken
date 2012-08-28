accessing
saveButton
	^saveButton ifNil: [ saveButton := self createButton
			label: 'Save';
			action: [ self doSave ];
			yourself ]