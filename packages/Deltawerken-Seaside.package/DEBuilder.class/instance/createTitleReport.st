accessing
createTitleReport
	|retVal columns|
	columns := OrderedCollection new
		add: (DEReportColumn new
			valueBlock: [ :row | row ];
			formatBlock: [ :value :canvas | canvas image
				url: value noIconUrl ];
			yourself);
		add: (DEDivColumn new
			valueBlock: [ :row | row noTitle ];
			yourself);
		yourself.
	self customColumns do: [ :each | columns add: each ].		
	retVal := DEDivReport new
		columns: columns;
		reportClass: 'no-report-title';
		yourself.
	retVal rowPeriod: 1.
	^retVal.