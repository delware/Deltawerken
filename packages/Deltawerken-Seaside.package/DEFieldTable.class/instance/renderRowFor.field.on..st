rendering
renderRowFor: aSubject field: aField on: canvas
	| action |
	action := self actionFor: aField. 
	(action isNil or: [ action isKindOf: DEFieldButton ])
		ifTrue: [
			canvas tableRow: [
				self renderRowContentFor: aSubject field: aField action: action on: canvas ] ]
		ifFalse: [
			action renderBlock: [ :html |
				self renderRowContentFor: aSubject field: aField action: action on: html ].
			canvas tableRow
				id: (action ensureFieldId: canvas);
				with: [ self renderRowContentFor: aSubject field: aField action: action on: canvas ] ]