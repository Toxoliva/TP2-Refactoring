retrieving
retrieveQuestions: aUser
	^ self
		lastQuestionsFrom: (self sortQuestionsFrom: (self retrieveSpecific: aUser))
		withoutQuestionsByUser: aUser