accessing
removePage: aPage
	(self pages contains: [
		:each| each = aPage
	]) ifTrue: [
		self pages remove: aPage.
		self pageInfoData removeKey: aPage
	]
