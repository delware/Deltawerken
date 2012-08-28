rendering
renderTableRowContentOn: canvas values: values action: anAction
	canvas tableData: [	self labelOn: canvas ].
	canvas tableData: [	self infoOn: canvas values: values ].
	canvas tableData: [	self renderWidgetOn: canvas values: values ].
	canvas tableData: [ anAction ifNotNil: [ anAction renderOn: canvas ] ]