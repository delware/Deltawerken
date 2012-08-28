rendering
renderRowContentFor: aSubject field: aField action: action on: canvas
	self renderLabelFor: aSubject field: aField on: canvas.
	self renderInfoFor: aSubject field: aField on: canvas.
	self renderDataFor: aSubject field: aField on: canvas.
	self renderAction: action for: aSubject on: canvas