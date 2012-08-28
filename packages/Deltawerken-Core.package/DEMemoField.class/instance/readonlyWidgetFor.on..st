rendering
readonlyWidgetFor: aSubject on: canvas
	(self hasValueFor: aSubject)
		ifTrue: [	(self value: aSubject) lines 
				do: [ :line| canvas text: line ] separatedBy: [ canvas break ] ]
		ifFalse: [ canvas space ]