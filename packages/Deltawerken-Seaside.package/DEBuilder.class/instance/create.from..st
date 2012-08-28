initialization
create: aSubject from: aCollection
	|temp|
	temp := aSubject new.
	aSubject fields with: aCollection do: [:each :text| |field|
		field := (aSubject perform: each).
		temp perform: (field accessor asMutator) with: (field convertFromString: text)].
	^temp