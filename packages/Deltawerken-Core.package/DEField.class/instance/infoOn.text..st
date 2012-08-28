rendering
infoOn: canvas text: aString
	aString
		ifNil:[ canvas space ]
		ifNotNil:[
			canvas image
				altText: 'i';
				title: aString;
				url: DEFileLibrary / #infoPng ]