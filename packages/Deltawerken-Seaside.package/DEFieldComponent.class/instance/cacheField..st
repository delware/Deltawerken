accessing
cacheField: aField
	| key |
	key := aField key.
	^self cachedFields at: key ifAbsent: [
		self cachedFields 
			at: key 
			put: (aField
				updater: (self customUpdaterFor: key);
				yourself) ]