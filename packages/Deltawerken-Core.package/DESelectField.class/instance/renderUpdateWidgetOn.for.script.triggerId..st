rendering
renderUpdateWidgetOn: canvas for: aSubject script: aScript triggerId: aTriggerId
	(self useRadioGroupFor: aSubject)
		ifTrue: [
			canvas span
				id: aTriggerId;
				with: [		
					canvas radioGroup
						callback: [ :value | 
							(self trueSubject: aSubject) perform: self trueAccessor asMutator with: value ];
						selected: (self value: aSubject);
						with: [ :group |
							(self listValues: aSubject) do: [ :value |
								|  brush |
								brush := canvas radioButton
									group: group;
									value: value;
									onChange: aScript;
									yourself.
								self labels
									ifNil: [ brush with: value ]
									ifNotNil: [ brush with: (self labels value: value) ] ]	 ] ] ]
	ifFalse: [ super renderUpdateWidgetOn: canvas for: aSubject script: aScript triggerId: aTriggerId ]