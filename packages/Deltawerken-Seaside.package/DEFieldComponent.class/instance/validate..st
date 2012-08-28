validation
validate: aSubject
	(self fieldsFor: aSubject) do: [ :each | 
			each validate: aSubject ]