navigation
doSave
	" check if all pages have a valid answer "
	self pages do: [ :page | page validate ].
	self pages 
		detect: [ :page | page isValid not ]
		ifNone: [ self answerOk ]
