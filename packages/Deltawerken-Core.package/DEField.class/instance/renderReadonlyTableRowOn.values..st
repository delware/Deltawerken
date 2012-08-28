rendering
renderReadonlyTableRowOn: canvas values: values
	canvas tableRow: [
		canvas tableData: [	self labelOn: canvas ].
		canvas tableData: [	self infoOn: canvas values: values ].
		canvas tableData: [	self readonlyWidgetOn: canvas values: values ] ]