rendering
readonlyWidgetFor: aSubject on: canvas panel: aPanel
	(self hasValueFor: aSubject)
		ifTrue: [
			canvas render: 	((self createReportFrom: aPanel) 
				rows: (self value: aSubject);
				yourself)]
		ifFalse: [ canvas space ]