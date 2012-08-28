rendering
renderWidgetFor: aSubject field: aField on: canvas
	self hasValidation
		ifTrue: [ aField widgetFor: aSubject on: canvas readonly: (self readonlyField: aField) panel: self panel ]
		ifFalse: [ aField simpleWidgetFor: aSubject on: canvas ]