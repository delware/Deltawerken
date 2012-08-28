accessing
switchMultiFor: aField
	self searchData at: aField put: (aField switchValue: (self searchData at: aField))