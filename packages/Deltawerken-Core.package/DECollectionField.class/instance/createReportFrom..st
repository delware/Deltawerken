rendering
createReportFrom: aPanel
	|builder|
	builder := DEBuilder new
		subject: self domainClass;
		propertySymbol: self propertySymbol;
		yourself.
	aPanel ifNil: [^builder createTitleReport].
	^builder createTitleReportFrom: aPanel. 
