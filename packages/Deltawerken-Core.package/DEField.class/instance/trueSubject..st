accessing
trueSubject: aSubject
	| value |
	value := aSubject.
	1 to: accessor size - 1 do: [ :index | value := value perform: (accessor at: index) ].
	^value.
	