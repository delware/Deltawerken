rendering
simpleWidgetFor: aSubject on: canvas
	| brush withBlock |
	brush := self brushFor: aSubject on: canvas.
	withBlock := self withBlockFor: aSubject on: canvas.
	withBlock ifNotNil: [ brush with: withBlock ]