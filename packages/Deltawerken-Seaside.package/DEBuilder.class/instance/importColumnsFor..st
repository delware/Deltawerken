import
importColumnsFor: aSubject
	|columns|
	columns := OrderedCollection new.
	aSubject fields do: [:field ||fld|
		fld := (aSubject perform: field) .
		columns add: ((DEReportColumn new)
			title: (fld label);
			selector: (fld accessor);
			yourself
			)].
	^columns