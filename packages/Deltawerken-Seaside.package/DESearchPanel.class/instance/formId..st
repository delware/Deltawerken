accessing
formId: aString
	form formId: aString.
	self pages do: [ :each |
		each formId: aString ].