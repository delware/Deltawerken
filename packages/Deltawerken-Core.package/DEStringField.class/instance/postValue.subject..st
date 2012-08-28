accessing
postValue: aValue subject: aSubject
	validator 
		ifNil: [ (self trueSubject: aSubject) perform: self trueAccessor asMutator with: aValue ]
		ifNotNil: [ (self trueSubject: aSubject) perform: self trueAccessor asMutator with: (validator format: aValue) ]