initialization
initializeUser: aUser publication: aPublication asLike: likeBoolean
	user := aUser.
	publication := aPublication.
	likeBoolean
		ifTrue: [ self like ]
		ifFalse: [ self dislike ]