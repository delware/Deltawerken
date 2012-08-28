accessing
elemStringValueOf: aElem
	labels ifNil: [
		^aElem asString.
	] ifNotNil: [
		^labels value: aElem
	]