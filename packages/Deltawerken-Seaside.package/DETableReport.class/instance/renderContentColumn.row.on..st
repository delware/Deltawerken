rendering
renderContentColumn: aColumn row: aRow on: html
	| text |
	aColumn canRender ifTrue: [ ^aColumn renderValue: aRow on: html ].
	text := aColumn textForRow: aRow.
	text isEmpty ifTrue: [ text := ' ' ].
	html text: text