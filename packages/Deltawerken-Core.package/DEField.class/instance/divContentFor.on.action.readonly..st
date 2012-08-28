rendering
divContentFor: aSubject on: canvas action: aAction readonly: aReadonly 
	canvas span
		class: 'fieldLabel';
		with: 
			[ self 
				labelFor: aSubject
				readonly: aReadonly
				on: canvas ].
	canvas span
		class: 'fieldInfo';
		with: 
			[ self 
				infoFor: aSubject
				on: canvas
				readonly: (self readonly or: [ aReadonly ]) ].
	canvas span
		class: 'fieldWidget';
		class: self requiredClass;
		with: 
			[ self 
				widgetFor: aSubject
				on: canvas
				readonly: (self readonly or: [ aReadonly ]) ].
	canvas span
		class: 'fieldAction';
		with: 
			[ aAction ifNotNil: 
				[ aAction 
					renderFor: aSubject
					on: canvas ] ]