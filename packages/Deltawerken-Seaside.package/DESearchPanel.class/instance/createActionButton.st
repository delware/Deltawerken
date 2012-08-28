initialization
createActionButton
	^self createButton
		action: [ self search ];
		label: self searchLabel;
		yourself