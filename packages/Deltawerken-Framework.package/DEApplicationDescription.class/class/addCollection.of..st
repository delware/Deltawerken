accessing
addCollection: aFieldname of: aClassname 
	^self fieldDescriptions add: (DECollectionFieldDescription on: self fieldName: aFieldname domainClassname: aClassname)