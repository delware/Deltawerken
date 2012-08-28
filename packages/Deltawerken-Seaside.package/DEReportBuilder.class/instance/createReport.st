report building
createReport
	| retVal columns sortColumn reverse |
	sortColumn := nil.
	columns := OrderedCollection new.
	reverse := false.
	self fields do: [ :field |
		| column |
		column := field createColumn.
		field isSorted ifTrue: [
			sortColumn := column.
			reverse := field reverse ].
		columns add: column ].
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