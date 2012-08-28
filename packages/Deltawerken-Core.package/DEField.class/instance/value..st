accessing
value: aSubject
	| value |
	aSubject ifNil: [ ^nil ].
	value := aSubject.
	accessor do: [ :each |	value := value perform: each ].
	^value.