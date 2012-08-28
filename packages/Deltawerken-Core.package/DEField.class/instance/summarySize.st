accessing
summarySize
	summarySize ifNil: [ ^self defaultSummarySize ].
	^summarySize