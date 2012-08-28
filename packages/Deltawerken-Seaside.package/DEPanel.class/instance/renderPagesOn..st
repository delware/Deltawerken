rendering
renderPagesOn: canvas
	self pages do: [:each|
		(self pageInfoData at: each) renderPage: each on: canvas ]
