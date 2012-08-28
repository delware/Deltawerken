rendering
readonlyWidgetFor: aSubject on: canvas
	(self hasValueFor: aSubject)
		ifTrue: [
			canvas render: 	((self createReport) 
				rows: (self value: aSubject);
				yourself)]
		ifFalse: [ canvas space ]