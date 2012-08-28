rendering
widgetFor: aSubject field: aField on: canvas
	| updaterId |
	id 
		ifNil: [ updaterId := canvas nextId ]
		ifNotNil: [ updaterId := id ].
	aField fullUpdate
		ifTrue: [ id
			ifNil: [
				canvas span
					id: updaterId;
					with: [ 
						self idWidgetFor: aSubject field: aField on: canvas updaterId: updaterId ] ]
			ifNotNil: [ self idWidgetFor: aSubject field: aField on: canvas updaterId: updaterId ] ]
		ifFalse: [
			self widgetOnlyFor: aSubject field: aField on: canvas updaterId: updaterId.
			id
				ifNil: [
					canvas span
						id: updaterId;
						with: [ self renderErrorMessageFor: aSubject field: aField on: canvas ] ]
				ifNotNil: [ self renderErrorMessageFor: aSubject field: aField on: canvas ] ]