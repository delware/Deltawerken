rendering
renderContentOn: canvas 
	canvas form
		id: 'loginForm';
		class: 'loginForm';
		class: (self session isLoggedIn asString);
		with: [
			self session isLoggedIn ifFalse: [
					self
						renderComponentOn: canvas;
						renderLoginOn: canvas;
						yourself ]
				ifTrue: [
					self
						renderTitleOn: canvas;
						renderLogoutOn: canvas;
						yourself ] ]