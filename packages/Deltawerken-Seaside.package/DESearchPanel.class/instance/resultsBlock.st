accessing
resultsBlock
	resultsBlock ifNil: [ ^[ :results | self answer: results ] ].
	^resultsBlock