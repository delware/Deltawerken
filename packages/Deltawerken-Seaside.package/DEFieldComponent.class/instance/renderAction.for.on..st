rendering
renderAction: anAction for: aSubject on: canvas
	anAction ifNotNil: [
		anAction renderFor: aSubject on: canvas ]