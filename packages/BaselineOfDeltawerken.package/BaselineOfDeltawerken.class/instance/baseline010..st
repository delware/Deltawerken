baselines
baseline010: spec 
	<version: '0.1.0-baseline'>

	spec for: #common do: [
		spec blessing: #'development'.
		spec description: '- first published version. Tested with a Pharo 1.3 and 1.4'.
"		Deltawerken is tested with Seaside 3.0.7 and 3.1.
		Load it in a pharo version with seaside loaded or uncomment spec below
		spec
			project: 'Seaside31' with: [
				spec
					className: 'ConfigurationOfSeaside31';
					versionString: #'stable';
					loads: #('Core');
					repository: 'http://www.squeaksource.com/Seaside31' ].
"		spec
			package: 'Deltawerken-Actions' with: [ spec requires: #(  'Deltawerken-Base' ) ];
			package: 'Deltawerken-Base' with: [ spec requires: #( 'Deltawerken-Core' ) ];
			package: 'Deltawerken-Core' "with: [ spec requires: #( 'Seaside31' ) ]";
			package: 'Deltawerken-Framework' with: [ spec requires: #( 'Deltawerken-Core' ) ];
			package: 'Deltawerken-Seaside' with: [ spec requires: #( 'Deltawerken-Base' 'Deltawerken-Actions' ) ];
			group: 'default' with: #('Full' );
			group: 'Core' with: #('Deltawerken-Core');
			group: 'Seaside' with: #('Deltawerken-Seaside');
			group: 'Full' with: #('Deltawerken-Seaside' 'Deltawerken-Framework');
			yourself ]