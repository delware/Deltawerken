rendering
renderWidgetFor: aSubject on: canvas
	canvas checkbox
		callback: [ :value | 
			(self trueSubject: aSubject) perform: (self trueAccessor) asMutator with: value 
		];
		value: (self value: aSubject).
