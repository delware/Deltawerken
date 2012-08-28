rendering
createReport
	|builder|
	builder := DEBuilder new
		subject: self domainClass;
		propertySymbol: self propertySymbol;
		yourself.
	self panel ifNil: [^builder createTitleReport].
	^builder createTitleReportFrom: self panel. 
