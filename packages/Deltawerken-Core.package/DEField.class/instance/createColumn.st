rendering
createColumn
	sortBlock ifNotNil: [
		^DEReportColumn new
			columnClass: self columnClass;
			title: self label;
			valueBlock: [ :row | row ];
			formatBlock: [ :subject :html | html text: (self summaryOf: subject) ];
			sortBlock: self sortBlock;
			yourself
	].
	^DEReportColumn new
		title: self label;
		columnClass: self columnClass;
		valueBlock: [ :row | self summaryOf: row ];
		yourself
