accessing
abbreviationOf: aSubject size: aSize
	^((self stringValueOf: aSubject) copyFrom: 1 to: aSize), '...'