call/answer
isValid
	self checkAll
		ifTrue: [
			^self fieldComponent isValid: subject ]
		ifFalse: [
			^self fieldComponent isValid: subject original: original ]
			
