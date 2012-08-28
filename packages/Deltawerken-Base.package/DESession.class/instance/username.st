accessing
username
	user ifNil: [
		^'No user logged in.'
	].
	^ user username