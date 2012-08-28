rendering
renderField: field on: canvas 
	| action |
	self formId
		ifNil: [ action := nil ]
		ifNotNil: [ action := field searchAction ].
	action ifNotNil: [
		action
			formId: self formId;
			action: [ self switchMultiFor: field ];
			multiBlock: [ self isFieldMulti: field ]
		].
	field 
		renderTableRowOn: canvas
		values: self searchData
		action: action