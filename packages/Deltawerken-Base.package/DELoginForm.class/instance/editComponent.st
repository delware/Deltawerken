accessing
editComponent
	^editComponent ifNil: [ editComponent := self createEditComponent ]