accessing
defaultValidator
	^DEStringValidator new
		required: self required;
		errorMessage: 'Password cannot be empty';
		yourself