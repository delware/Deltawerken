rendering
renderEmptyValueOn: canvas
	self noneValue 
		ifNil: [ canvas space ]
		ifNotNil: [ canvas render: self noneValue ]