rendering
canRender
	^(self formatBlock numArgs > 1) or: [ super canRender ]