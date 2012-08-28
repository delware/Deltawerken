versions
version010: spec
	<version: '0.1.0' imports: #('0.1.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'development'.
		spec description: 'First published version'.
		spec author: 'Stephan Eggermont'.
		spec timestamp: '28/08/2012'.
		spec
			package: 'Deltawerken-Actions' with: 'Deltawerken-Actions-DiegoLont.3';
			package: 'Deltawerken-Base' with: 'Deltawerken-Base-DiegoLont.23';
			package: 'Deltawerken-Core' with: 'Deltawerken-Core-StephanEggermont.31';
			package: 'Deltawerken-Framework' with: 'Deltawerken-Framework-DiegoLont.2';
			package: 'Deltawerken-Seaside' with: 'Deltawerken-Seaside-DiegoLont.20'].