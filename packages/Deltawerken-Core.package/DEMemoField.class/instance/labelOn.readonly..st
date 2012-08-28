rendering
labelOn: canvas readonly: aReadonly
	super labelOn: canvas readonly: aReadonly.
	aReadonly ifFalse: [ self labelInfo ifNotNil: [ canvas span
			class: 'label-info';
			with: '(', self labelInfo, ')' ] ].