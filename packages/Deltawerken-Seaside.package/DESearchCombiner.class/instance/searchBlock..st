accessing
searchBlock: aBlock
	self pages do: [ :each | each searchBlock: aBlock ]