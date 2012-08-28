initialization
createEditComponent
	^DEEditComponent new
		title: self welcomeText;
		subject: self userClass new isNew: true;
		propertySymbol: #loginFields;
		hasValidation: false;
		yourself