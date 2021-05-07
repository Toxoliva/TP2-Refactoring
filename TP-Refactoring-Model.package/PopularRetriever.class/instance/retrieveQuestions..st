retrieving
retrieveQuestions: aUser
	^ self
		lastQuestionsFrom: (self sortQuestionsFrom: cuoora popularQuestions)
		withoutQuestionsByUser: aUser