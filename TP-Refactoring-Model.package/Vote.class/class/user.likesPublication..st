instance creation
user: aUser likesPublication: aPublication
	^ self new
		initializeUser: aUser publication: aPublication;
		yourself