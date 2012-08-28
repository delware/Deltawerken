rendering
renderSearchTableOn: canvas 
	canvas div
		class: self formClass;
		with: 
			[ canvas table: 
				[ canvas tableRow.
				self fields do: 
					[ :field | 
					self renderField: field on: canvas ] ] ]