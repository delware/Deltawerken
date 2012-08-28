accessing
abbreviationOf: aSubject size: aSize
	| temp end start index valueList |
	temp := self stringValueOf: aSubject.
	(temp size < aSize) ifTrue: [ ^temp ].
	valueList := self value: aSubject.
	(valueList size < 3) ifTrue: [ ^super abbreviationOf: aSubject size: aSize ].
	start := valueList first asString.
	temp := start.
	end := ', ..., ', valueList last asString, ' (', valueList size asString, ')'.
	index := 2.
	[ temp size + end size < aSize ] whileTrue: [
		start := temp.
		temp := start, ', ', (valueList at: index) asString.
		index := index + 1 ].
	^start, end