rendering
textValueFor: aValue
	(self isMulti: aValue)
		ifTrue: [ ^String streamContents: [ :s |
				aValue do: [ :each | s nextPutAll: each ] separatedBy: [ s nextPutAll: ', ' ] ] ]
		ifFalse: [ ^aValue ]