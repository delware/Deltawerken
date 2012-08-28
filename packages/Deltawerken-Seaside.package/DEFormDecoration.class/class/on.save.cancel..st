as yet unclassified
on: component save: saveText cancel: cancelText
	^self new
		addButton: (DEActionButton new
			label: saveText;
			action: [ component doSave ];
			yourself);
		addButton: (DEActionButton new
			label: cancelText;
			beCancelAction;
			action: [ component doCancel ];
			yourself);
		yourself