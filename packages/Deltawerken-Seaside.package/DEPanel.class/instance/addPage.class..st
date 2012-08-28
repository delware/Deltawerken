accessing
addPage: page class: aClass
	self addPage: page info: 
		(DEPageInfo new
			divClass: aClass;
			yourself)
