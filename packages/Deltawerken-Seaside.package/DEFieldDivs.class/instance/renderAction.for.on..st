rendering
renderAction: anAction for: aSubject on: canvas
	canvas span
		class: 'fieldAction';
		with: [ anAction ifNotNil: [
			anAction renderFor: aSubject on: canvas ] ]