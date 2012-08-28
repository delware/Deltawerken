rendering
stringValueOf: aSubject
	| selected |
	selected := self value: aSubject.
	(selected size = 0) ifTrue: [ ^self noneValue ].
	(selected size = (self listValues: aSubject) size) ifTrue: [ self allValue ifNotNil: [ ^self allValue ] ].
	^String streamContents: [ :s |
		selected 
			do: [ :each | s nextPutAll: (self elemStringValueOf: each) ]
			separatedBy: [ s nextPutAll: ', ' ] ]