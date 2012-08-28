rendering
setFocusOn: canvas
	focusId ifNotNil: [ 
		" zetten van de focus is altijd eenmaligs "
		canvas script: 'document.getElementById("', focusId, '").focus();'.
		focusId := nil ]