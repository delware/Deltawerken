rendering
renderCriteriaOn: canvas
	self canSearch ifTrue: [
		self criteriaTitle ifNotNil: [
			canvas heading
				level: 3;
				with: self criteriaTitle ].
		self pages do: [ :each | each renderCriteriaOn: canvas ] ]