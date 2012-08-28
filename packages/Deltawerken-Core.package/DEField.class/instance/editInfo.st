accessing
editInfo
	editInfo ifNil: [
		info 
			ifNil: [ validator ifNil: [ ^nil ].
				^validator info ].
		^info ].
	^editInfo