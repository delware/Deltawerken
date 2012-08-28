accessing
listValues: aSubject
	listObject ifNil: [
		^(aSubject perform: (self list)).
	] ifNotNil: [
		^(self listObject perform: (self list)).
	].
