rendering
renderRows: aFieldList for: aSubject on: canvas 
	aFieldList do: 
		[ :field | 
		self 
			renderRowFor: aSubject
			field: field
			on: canvas.
		field isComposite ifTrue: [
			self 
				renderRows: ((field fieldsFor: aSubject) collect: [ :each | self cacheField: each ])
				for: aSubject
				on: canvas ] ]