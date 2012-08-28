accessing
applicationClassName
	^self prefix, (self applicationName asIdentifier: true), 'Application'