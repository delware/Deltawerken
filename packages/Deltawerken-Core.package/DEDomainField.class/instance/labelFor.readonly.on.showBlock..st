rendering
labelFor: aSubject readonly: aReadonly on: canvas showBlock: aBlock
	(aBlock isNil or: [ aReadonly not ]) ifTrue: [
		^super labelFor: aSubject readonly: aReadonly on: canvas showBlock: aBlock ].
	canvas anchor
		callback: [ aBlock value: (self value: aSubject) value: self ];
		with: self label