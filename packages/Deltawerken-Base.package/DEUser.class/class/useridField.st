fields
useridField
	^DEStringField new
		label: 'Username';
		accessor: #( #userid );
		validator: (DECustomValidator new
			required: true;
			validateBlock: [ :value | self isValidUserid: value ];
			errorBlock: [ :value | self isValidUseridError: value ];
			yourself);
		yourself