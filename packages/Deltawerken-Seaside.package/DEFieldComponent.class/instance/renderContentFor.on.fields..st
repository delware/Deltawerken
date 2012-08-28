rendering
renderContentFor: aSubject on: canvas fields: fields
	self renderRows: (fields collect: [ :each | self cacheField: each ])
		for: aSubject
		on: canvas