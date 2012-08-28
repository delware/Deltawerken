accessing
addButton: aButton
	self buttons 
		detect: [ :button | button = aButton ]
		ifNone: [ self buttons add: aButton ]