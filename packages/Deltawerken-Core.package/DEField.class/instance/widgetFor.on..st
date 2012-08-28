rendering
widgetFor: aSubject on: canvas
	self updater ifNil: [
		self validator
			ifNil: [ ^self simpleWidgetFor: aSubject on: canvas ]
			ifNotNil: [ updater := DEUpdater new ] ].
	self updaterWidgetFor: aSubject on: canvas