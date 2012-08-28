accessing
hasRequiredField
	self pages do: [ :each | each hasRequiredField ifTrue: [ ^true ] ].
	^false