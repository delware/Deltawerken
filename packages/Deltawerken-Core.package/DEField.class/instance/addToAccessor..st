accessing
addToAccessor: anArray
	self accessor: (anArray asOrderedCollection copy
		addAll: self accessor;
		yourself)