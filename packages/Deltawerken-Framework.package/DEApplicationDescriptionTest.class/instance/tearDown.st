running
tearDown
	WAAdmin unregister: 'Forum Demo'.
	self removeClass: #FDFileLibrary.
	self removeClass: #FDForumDemoApplication.
	self removeClass: #FDApplicationDescription.
	SystemOrganization removeCategory: 'ForumDemo'.
	SystemOrganization removeCategory: 'ForumDemo-Web'