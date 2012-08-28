rendering
widgetFor: aSubject on: canvas readonly: aBoolean 
	aBoolean
		ifTrue: [ self readonlyWidgetFor: aSubject on: canvas ]
		ifFalse: [ self widgetFor: aSubject on: canvas ]