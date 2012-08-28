accessing
addPage: aPage info: aPageInfo
	self pages detect: [
		:each| each = aPage
	] ifNone: [
		self pages add: aPage.
		self pageInfoData at: aPage put: aPageInfo
	].