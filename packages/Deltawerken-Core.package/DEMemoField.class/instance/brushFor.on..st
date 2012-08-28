rendering
brushFor: aSubject on: canvas
	^canvas textArea
		on: (self trueAccessor) of: (self trueSubject: aSubject);
		columns: self columns;
		rows: self rows