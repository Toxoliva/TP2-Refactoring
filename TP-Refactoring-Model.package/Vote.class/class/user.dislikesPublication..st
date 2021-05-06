instance creation
user: aUser dislikesPublication: aPublication
	^ self new
		initializeUser: aUser publication: aPublication;
		dislike;
		yourself