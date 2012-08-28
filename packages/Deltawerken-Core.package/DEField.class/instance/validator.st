accessing
validator
	^ validator ifNil: [ validator := self defaultValidator ]