rendering
renderTitleOn: canvas
	self title ifNotNil: [ canvas heading
			level: 2;
			with: self title
		]