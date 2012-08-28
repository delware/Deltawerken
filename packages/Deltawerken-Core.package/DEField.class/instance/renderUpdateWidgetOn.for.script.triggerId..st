rendering
renderUpdateWidgetOn: canvas for: aSubject script: aScript triggerId: aTriggerId
	| brush withBlock |
	brush := (self brushFor: aSubject on: canvas)
		id: aTriggerId;
		onChange: aScript;
		yourself.
	withBlock := self withBlockFor: aSubject on: canvas.
	withBlock ifNotNil: [ brush with: withBlock ]