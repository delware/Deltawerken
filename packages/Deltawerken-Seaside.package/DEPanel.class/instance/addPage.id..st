accessing
addPage: page id: anId
	self addPage: page info: 
		(DEPageInfo new
			divId: anId;
			yourself)
