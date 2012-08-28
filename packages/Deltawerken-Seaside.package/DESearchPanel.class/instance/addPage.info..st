accessing
addPage: page info: info
	page formId: self formId.
	super addPage: page info: info.
	page searchBlock: [ self search ]