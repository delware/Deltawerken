accessing
subject: anObject
	subject = anObject ifFalse: [
		self clearFields.
		subject := anObject]