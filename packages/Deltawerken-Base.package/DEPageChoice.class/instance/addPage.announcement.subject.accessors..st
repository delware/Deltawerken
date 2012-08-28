accessing
addPage: page announcement: announcement subject: subject accessors: accessors
	self addPage: page.
	self announcer
		subscribe: announcement
		do: [ :ann |
			| temp |
			temp := subject.
			accessors do: [ :each| temp := temp perform: each ].
			page subject: temp.
			self currentPage: page.
		]
		for: self
