rendering
labelFor: aSubject on: canvas
	self panel ifNil: [^super labelFor: aSubject on: canvas].
	canvas anchor
		callback: [ self show: (self value: aSubject) ];
		with: self label