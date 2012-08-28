tags
brushFor: aSubject on: canvas
	(self useRadioGroupFor: aSubject)
		ifTrue: [ ^self radioBrushFor: aSubject on: canvas ]
		ifFalse: [ ^self listBrushFor: aSubject on: canvas ]
