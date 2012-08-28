accessing
libraryClass
	^libraryClass ifNil: [ libraryClass := self generateLibraryClass ]