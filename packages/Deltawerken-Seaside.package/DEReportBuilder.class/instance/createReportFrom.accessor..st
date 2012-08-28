report building
createReportFrom: aSourceComponent accessor: aDetailsAccessor
	|retVal columns sortColumn reverse first|
	sortColumn := nil.
	columns := OrderedCollection new.
	reverse := false.
	first := true. 
	self fields do: [ :field |
		| column |
		column := field createColumn.
		first ifTrue: [
			column clickBlock: [ :row | aSourceComponent perform: aDetailsAccessor with: row ] ].
		field isSorted ifTrue: [
			sortColumn := column.
			reverse := field reverse ].
		columns add: column.
		first := false ].
	self customColumns do: [ :each | columns add: each ].		
	retVal := DETableReport new
		columns: columns;
		yourself.
	self sorted ifTrue: [
		sortColumn ifNotNil: [
			retVal sortColumn: sortColumn.
			reverse ifTrue: [ retVal reverse ] ] ].
	retVal rowPeriod: 1.
	^retVal