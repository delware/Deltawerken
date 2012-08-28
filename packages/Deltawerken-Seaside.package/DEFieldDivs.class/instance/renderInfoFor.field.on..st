rendering
renderInfoFor: aSubject field: aField on: canvas
	canvas span
		class: 'fieldInfo';
		with: [ super renderInfoFor: aSubject field: aField on: canvas ]