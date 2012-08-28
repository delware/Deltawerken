fields
passwordVerifyField
	^DEPasswordField new
		label: 'password verification';
		accessor: #( #passwordVerify );
		validator: (DECustomValidator new
			required: true;
			validateBlock: [ :subject :value | subject password = value ];
			errorBlock: [ :value | 'Passwords should be equal.' ];
			yourself);
		yourself