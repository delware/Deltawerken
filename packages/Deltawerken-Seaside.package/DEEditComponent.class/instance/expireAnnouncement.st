accessing
expireAnnouncement
	^expireAnnouncement ifNil: [ expireAnnouncement := DEExpired ]
