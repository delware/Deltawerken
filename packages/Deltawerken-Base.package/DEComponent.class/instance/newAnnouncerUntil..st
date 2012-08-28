session
newAnnouncerUntil: anAnnouncement
	| oldAnnouncer |
	oldAnnouncer := self announcer.
	self resetAnnouncer.
	self announcer
		subscribe: anAnnouncement
		do: [ :ann | 
			self announcer: oldAnnouncer.
			self announce: ann ]
		for: self
	