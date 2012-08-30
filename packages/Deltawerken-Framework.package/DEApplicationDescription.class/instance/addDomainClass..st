accessing
addDomainClass: aName
	| classDescription |
	" check if it already exists "
	classDescription := self domainClassDescriptions detect:  [ :each |
		each domainClassName = aName ] ifNone: [ nil ].
	classDescription ifNil: [
		classDescription := self domainClassDescriptions add: (DEDomainClassDescription on: self name: aName).
		classDescription generate ].
	^classDescription