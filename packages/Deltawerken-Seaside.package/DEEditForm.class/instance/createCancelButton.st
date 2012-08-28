accessing
createCancelButton
	^self createButton
		label: 'Cancel';
		beCancelAction;
		action: [ self doCancel ];
		yourself