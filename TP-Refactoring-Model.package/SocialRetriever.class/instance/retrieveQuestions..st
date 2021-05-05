retrieving
retrieveQuestions: aUser
	
	^self lastQuestionsFrom: ( 
		self sortQuestionsFrom: ( aUser questionsFromFollowers ) 
			) withoutQuestionsByUser: aUser