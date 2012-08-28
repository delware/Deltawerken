accessing
addPage: page announcement: announcement symbol: aSymbol
	self addPage: page.
	self announcer
		subscribe: announcement
		do: [ :ann |
			(ann perform: aSymbol) ifNotNil: [ page subject: (ann perform: aSymbol) ].
			self currentPage: page]
