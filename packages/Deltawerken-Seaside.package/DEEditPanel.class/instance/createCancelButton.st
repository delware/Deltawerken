accessing
createCancelButton
	^self createButton
		label: 'Cancel';
		action: [ self doCancel ];
		yourself