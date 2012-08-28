tags
listBrushFor: aSubject on: canvas
	| brush |
	brush := (self listBrushOn: canvas)
		on: (self trueAccessor) of: (self trueSubject: aSubject);
		list: (self listValues: aSubject).
	labels ifNotNil: [ brush labels: labels ].
	^brush