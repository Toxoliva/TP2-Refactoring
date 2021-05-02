instance creation
newWithTitle: title description: aDescription user: aUser
	^ self new
		initializeTitle: title
		description: aDescription
		user: aUser yourself