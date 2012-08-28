fields
usernameField
	^DEStringField new
		beReadonly;
		accessor: #( #username );
		yourself