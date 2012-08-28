instance creation
labelField
	^DEStringField new
		label: 'Label';
		accessor: #(#label);
		yourself