rendering
renderContentOn: canvas 
	title ifNotNil: 
		[ canvas heading
			level: 2;
			with: title ].
	self renderSearchTableOn: canvas