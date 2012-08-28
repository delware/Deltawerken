accessing
defaultStrategy
	^defaultStrategy ifNil: [ defaultStrategy := self new ]