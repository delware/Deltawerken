rendering
readonlyWidgetFor: aSubject on: canvas
	(self hasValueFor: aSubject)
		ifTrue: [
			canvas
				html: self currencyHtml;
				space;
				text: (self stringValueOf: aSubject) ]
		ifFalse: [ canvas space ]