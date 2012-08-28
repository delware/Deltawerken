rendering
renderFieldComponentOn: canvas 
	self subject ifNotNil: [
		self fieldComponent renderContentFor: self subject on: canvas ]