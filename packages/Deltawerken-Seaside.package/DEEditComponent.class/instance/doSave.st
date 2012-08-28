call/answer
doSave
	expired 
		ifTrue: [ self announce: self expireAnnouncement ]
		ifFalse: [ 
			self validate.
			self isValid ifTrue: [ self answerOk ] ]