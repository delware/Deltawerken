rendering
renderTableOn: canvas 
	canvas table: [
		self 
			renderUserOn: canvas;
			renderPasswordOn: canvas ].
	canvas horizontalRule