accessing
addPage: page id: anId class: aClass
	self addPage: page info: 
		(DEPageInfo new
			divId: anId;
			divClass: aClass;
			yourself)
