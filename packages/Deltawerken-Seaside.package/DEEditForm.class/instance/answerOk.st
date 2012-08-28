accessing
answerOk
	self saveAction 
		ifNil: [ super answerOk ]
		ifNotNil: [ saveAction value ]