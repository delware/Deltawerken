accessing
match: aSubject with: anotherSubject
	" We only match if both subjects have a value for this field "
	(self hasValueFor: aSubject) ifFalse: [ ^0 ].
	(self hasValueFor: anotherSubject) ifFalse: [ ^0 ].
	(self valueFor: aSubject) = (self valueFor: anotherSubject) ifTrue: [ ^1 ].
	^0
	