rendering
renderLogoutOn: canvas

	canvas div: [
		canvas submitButton
			callback: [self logout];
			with: self logoutButtonText.
	].