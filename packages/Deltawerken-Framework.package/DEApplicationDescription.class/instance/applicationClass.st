accessing
applicationClass
	^applicationClass ifNil: [ applicationClass := self generateApplicationClass ]