DEApplicationDescription can be used to generate an application based on Deltawerken.

Use the following syntax:.
DEApplicationDescription newApplication: '<your application name>' prefix: '<your prefix>'  category: '<your category>' 

example:
	DEApplicationDescription newApplication: 'Forum Demo' prefix: 'FD' category: 'ForumDemo'

After this, you can use your application description to add model classes and fields. The name of tis description is:
	<your prefix>ApplicationDescription; a class that inherits from DEApplicationDescription (this class).

Use the following methods:
	regenerate: if something went wrong, and you want your classes to be regenerated
	addDomainClass: to add a domain class to your model. This returns the description of the domain class, that allows you to add fields to this class.
	
example:
	(FDApplicationDescription addDomainClass: 'Model')
		beRoot;
		addCollection: 'authors' of: 'Author';
		addCollection: 'questions' of: 'Question';
		addCollection: 'tags' of: 'Tag'
		