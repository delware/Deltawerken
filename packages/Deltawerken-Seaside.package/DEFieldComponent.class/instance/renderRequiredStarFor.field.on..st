rendering
renderRequiredStarFor: aSubject field: aField on: canvas
	((self readonlyField: aField) not and: [
		self requiredStar and: [ aField required ] ]) ifTrue: [
			canvas span
				class: 'field-required';
				with: '*' ]