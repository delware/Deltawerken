rendering
serializationFor: aSubject script: aScript
	(self useRadioGroupFor: aSubject) ifTrue: [ ^(aScript find: ':input') ].
	^aScript