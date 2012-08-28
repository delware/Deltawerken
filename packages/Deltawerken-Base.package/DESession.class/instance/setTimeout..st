navigation
setTimeout: aValue 
	aValue ifNotNil: [
		defaultTimeout := self parent cache expiryPolicy configuration at: #cacheTimeout.
		self parent cache expiryPolicy configuration at: #cacheTimeout put: aValue ]