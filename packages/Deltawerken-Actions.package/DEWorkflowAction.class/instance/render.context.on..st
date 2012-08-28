rendering
render: aDomainObject context: aContext on: canvas
	url ifNil: [
		canvas anchor
			callback: [ self actOn: aDomainObject context: aContext ];
			with: label]
	ifNotNil: [
		canvas anchor
				callback: [ self actOn: aDomainObject context: aContext ];
				with: [canvas image
					title: label;
					url: url]]