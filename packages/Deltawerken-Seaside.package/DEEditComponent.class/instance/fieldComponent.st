accessing
fieldComponent
	^fieldComponent ifNil: [ 
		fieldComponent := self createFieldComponent ]