rendering
widgetFor: aSubject on: canvas readonly: aBoolean panel: aPanel
	aBoolean
		ifTrue: [ self readonlyWidgetFor: aSubject on: canvas panel: aPanel ]
		ifFalse: [ self widgetFor: aSubject on: canvas ]