rendering
renderCriteriaOn: canvas
	self pages do: [ :each | each renderCriteriaOn: canvas ]