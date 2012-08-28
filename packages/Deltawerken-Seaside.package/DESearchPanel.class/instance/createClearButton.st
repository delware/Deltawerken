initialization
createClearButton
	^self createButton
		action: [ self clearFields ];
		beCancelAction;
		label: self clearLabel;
		yourself