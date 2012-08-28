rendering
renderContentOn: html
	| form |
	form := html form.
	self formId ifNotNil: [ form id: self formId ].
	self formClass ifNotNil: [ form class: self formClass ].
	form with: [
			self renderNextOn: html.
			self renderButtonsOn: html ]