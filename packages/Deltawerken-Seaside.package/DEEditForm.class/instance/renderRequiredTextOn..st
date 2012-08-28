rendering
renderRequiredTextOn: canvas
	self requiredText ifNotNil: [
		self hasRequiredField ifTrue: [
			canvas div
				class: self requiredClass;
				with: [
					canvas span
						class: 'field-required';
						with: '*'.
					canvas render: self requiredText ] ] ]