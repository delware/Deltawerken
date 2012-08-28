fields
passwordField
	^DEPasswordField new
		label: 'password';
		accessor: #( #password );
		required: true;
		validator: (DEStringValidator new
			required: true;
			errorMessage: 'Password is required.';
			yourself)
		yourself