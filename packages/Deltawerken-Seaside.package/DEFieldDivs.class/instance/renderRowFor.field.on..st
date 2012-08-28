rendering
renderRowFor: aSubject field: aField on: canvas
	| action |
	action := self actionFor: aField. 
	action ifNil: [
		canvas div
			class: 'fieldRow';
			with: [
				self renderRowContentFor: aSubject field: aField action: action on: canvas ]	]
	ifNotNil: [
		action renderBlock: [ :html | self renderRowContentFor: aSubject field: aField action: action on: html ].
		canvas div
			class: 'fieldRow';
			id: (action ensureFieldId: canvas);
			with: [ self renderRowContentFor: aSubject field: aField action: action on: canvas ] ]