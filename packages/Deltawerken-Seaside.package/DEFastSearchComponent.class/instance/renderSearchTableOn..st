rendering
renderSearchTableOn: canvas 
	canvas div
		class: self formClass;
		with: 
			[ canvas table: 
				[ canvas tableRow: 
					[ canvas tableData: [ canvas label: self searchLabel ].
					canvas tableData: 
						[ canvas textInput 
							on: #searchValue
							of: self ] ] ].
			canvas break ]