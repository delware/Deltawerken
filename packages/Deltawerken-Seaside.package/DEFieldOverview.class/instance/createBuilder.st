initialization
createBuilder
	" een overview is standaard readonly "
	^super createBuilder
		beReadonly;
		yourself