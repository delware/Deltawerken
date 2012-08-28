rendering
renderFormDataOn: canvas
	| brush |
	brush := canvas div
		class: self editTableClass;
		yourself.
	editDivId ifNotNil: [ brush id: editDivId ].
	brush with: [ self renderFieldComponentOn: canvas ]