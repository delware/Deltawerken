accessing
isValid: aSubject
	self validator ifNotNil: [ ^self validator isValid: (self value: aSubject) subject: aSubject ].
	^true