accessing
match: aSubject with: anotherSubject
	" We only match if both subjects have a value for this field "
	self matcher ifNotNil: [ ^self matcher match: (self value: aSubject) with: (self value: anotherSubject) ].
	^super match: aSubject with: anotherSubject