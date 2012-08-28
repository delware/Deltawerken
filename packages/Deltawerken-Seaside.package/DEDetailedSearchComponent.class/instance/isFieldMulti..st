accessing
isFieldMulti: aField
	^aField isMulti: (self searchData at: aField)