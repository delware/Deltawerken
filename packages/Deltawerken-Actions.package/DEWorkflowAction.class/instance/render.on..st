rendering
render: aDomainObject on: canvas
	self url ifNil: [
		canvas anchor
			callback: [ self actOn: aDomainObject context: (self contextFor: canvas) ];
			with: label]
	ifNotNil: [
		canvas anchor
				callback: [ self actOn: aDomainObject context: (self contextFor: canvas) ];
				with: [ canvas image
					title: label;
					url: self url ] ]