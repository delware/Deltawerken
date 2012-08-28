accessing
createSaveButton
	^self createButton
		label: self saveText;
		action: [ self doSave ];
		yourself