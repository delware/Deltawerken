accessing
isValidError: aSubject
	self validator ifNotNil: [ 
		self validator validate.
		^self validator isValidError: (self value: aSubject) subject: aSubject ].
	^#()