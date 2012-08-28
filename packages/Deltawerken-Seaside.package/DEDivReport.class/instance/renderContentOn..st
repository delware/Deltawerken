rendering
renderContentOn: html
	html div
		class: self reportClass;
		with: [ self renderRowsOn: html ]