retrieving
retrieveQuestions: aUser
	^ self
		lastQuestionsFrom: (self sortQuestionsFrom: cuoora questionsFromToday)
		withoutQuestionsByUser: aUser