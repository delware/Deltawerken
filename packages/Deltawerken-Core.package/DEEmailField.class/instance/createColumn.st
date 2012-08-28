rendering
createColumn
	^DEReportColumn new
		title: label;
		columnClass: self columnClass;
		valueBlock: [ :anObject :html | self readonlyWidgetFor: anObject on: html ];
		yourself