accessing
addSubject: aSubject isNew: aIsNew
	self addPage: (DEEditComponent new
		subject: aSubject isNew: aIsNew;
		yourself)