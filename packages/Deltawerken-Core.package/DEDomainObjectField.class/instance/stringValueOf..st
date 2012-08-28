accessing
stringValueOf: aSubject
	| value |
	value := self value: aSubject.
	value ifNotNil: [ ^value noTitle ].
	^'nil'