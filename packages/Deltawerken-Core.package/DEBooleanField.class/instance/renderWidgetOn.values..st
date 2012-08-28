rendering
renderWidgetOn: canvas values: values
	values ifNotNil: [
		canvas checkbox
			value: (values at: self);
			callback: [ :value| values at: self put: value ] ]