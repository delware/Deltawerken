tags
radioBrushFor: aSubject on: canvas
	| group |
	group := canvas radioGroup.
	(self listValues: aSubject) do: [ :value |
		| brush |
		brush := canvas radioButton.
		(self value: aSubject) = value ifTrue: [ brush selected: true ].
		brush
			group: group;
			callback: [ (self trueSubject: aSubject) perform: self trueAccessor asMutator with: value ];
			submitOnClick.
		labels
			ifNil: [ brush with: value ]
			ifNotNil: [ brush with: (labels value: value) ]
	].
	^group