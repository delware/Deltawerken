accessing
goHomeOn: announcement 
	self announcer 
		subscribe: announcement
		do: [ :ann | self currentPage: homepage ]