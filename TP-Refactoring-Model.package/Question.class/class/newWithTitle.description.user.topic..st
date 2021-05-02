instance creation
newWithTitle: title description: aDescription user: aUser topic: aTopic
	^ self new
		initializeTitle: title
		description: aDescription
		user: aUser
		topic: aTopic yourself