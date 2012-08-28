rendering
renderColumn: aColumn row: aRow on: html
	| brush |
	brush := html tableData.
	aColumn columnClass ifNotNil: [ brush class: aColumn columnClass ].
	brush with: [
		aColumn canChoose
			ifFalse: [ self renderContentColumn: aColumn row: aRow on: html ]
			ifTrue: [
				html anchor
					callback: [ self chooseRow: aRow column: aColumn ];
					with: [ self renderContentColumn: aColumn row: aRow on: html ] ] ]