rendering
renderWidgetOn: canvas values: values
	values ifNotNil: [
		(self brushOn: canvas)
			value: (values at: self);
			callback: [ :value| values at: self put: value ] ]