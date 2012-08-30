accessing
instanceVariableNames
	^String streamContents: [ :s |
		self fieldDescriptions do: [ :each | s nextPutAll: each fieldName ] separatedBy: [ s space ] ]