accessing
addDomainClass: aName
	| classDescription |
	classDescription := self domainClassDescriptions add: (DEDomainClassDescription on: self name: aName).
	classDescription generate.
	^classDescription