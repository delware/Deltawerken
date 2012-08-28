rendering
createColumn
	^ DEReportColumn new
		title: label;
		columnClass: self columnClass;
		valueBlock: [ :row | self value: row ];
		formatBlock: 
			[ :value :html | 
				value 
					ifNil: [ html text: '-' ]
					ifNotNil: [ html text: (value printFormat: #(1 2 3 $- 1 1 2)) ] ];
		yourself