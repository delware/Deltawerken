rendering
renderCriteriaOn: canvas 
	canvas table: [
		canvas tableRow.
		self fields do: [ :field | 
			| value |
			value := self searchData at: field.
			(field isValidSearchValue: value) ifTrue: [
				field 
					renderReadonlyTableRowOn: canvas
					values: self searchData ] ] ]