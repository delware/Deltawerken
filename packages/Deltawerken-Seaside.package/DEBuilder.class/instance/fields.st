accessing
fields
	fields ifNil: [ ^(self subject perform: self propertySymbol) collect: [ :each | self subject perform: each ]].
	^fields