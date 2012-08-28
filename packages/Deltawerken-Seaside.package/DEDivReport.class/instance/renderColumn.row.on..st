rendering
renderColumn: aColumn row: aRow on: html
	html div
		class: (self columnClassFor: aColumn);
		with: [ aColumn canChoose
			ifFalse: [ self renderContentColumn: aColumn row: aRow on: html ]
			ifTrue: [
				html anchor
					callback: [ self chooseRow: aRow column: aColumn ];
					with: [ self renderContentColumn: aColumn row: aRow on: html ] ] ]