rendering
renderWidgetFor: aSubject field: aField on: canvas
	(aField hasValueFor: aSubject) ifTrue: [
		self first
			ifTrue: [ self first: false.
				self heading
					ifTrue: [ canvas strong: [ super renderWidgetFor: aSubject field: aField on: canvas ] ]
					ifFalse: [ super renderWidgetFor: aSubject field: aField on: canvas ] ]
			ifFalse: [ 
				self renderSeparatorOn: canvas.
				super renderWidgetFor: aSubject field: aField on: canvas ] ]