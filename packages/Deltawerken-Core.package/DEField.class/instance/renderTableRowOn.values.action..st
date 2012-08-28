rendering
renderTableRowOn: canvas values: values action: anAction
	anAction 
		ifNil: [
			canvas tableRow: [
				self renderTableRowContentOn: canvas values: values action: anAction ] ]
		ifNotNil: [
			anAction renderBlock: [ :html |
				self renderTableRowContentOn: html values: values action: anAction ].
			canvas tableRow
				id: (anAction ensureFieldId: canvas);
				with: [ self renderTableRowContentOn: canvas values: values action: anAction ] ]