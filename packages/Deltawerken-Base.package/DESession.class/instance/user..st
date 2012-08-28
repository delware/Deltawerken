accessing
user: anObject
	(user ~= anObject) ifTrue: [
		user := anObject.
		user ifNil: [
			self setTimeout: self defaultTimeout.
			self announcer announce: self logoutAnnouncement ]
		ifNotNil: [
			self setTimeout: self loginTimeout.
			self announcer announce: self loginAnnouncement ] ]