rendering
useRadioGroupFor: aSubject
	radioGroup 
		ifNil: [ ^(self listValues: aSubject) size < 5 ].
	^radioGroup