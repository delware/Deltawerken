fields
passwordField
	^DEPasswordField new
		label: 'Password';
		accessor: #( #password );
		required: true;
		yourself