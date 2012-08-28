accessing
beRequired
	self validator ifNil: [ 
		validator := DEStringValidator new
			errorMessage: 'automatic check';
			yourself ].
	self validator beRequired