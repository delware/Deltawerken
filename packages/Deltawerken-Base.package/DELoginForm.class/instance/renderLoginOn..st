rendering
renderLoginOn: canvas
	canvas div: [
		canvas submitButton
			callback: [self login];
			with: 'Login' ]