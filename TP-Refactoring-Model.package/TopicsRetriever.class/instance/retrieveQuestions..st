retrieving
retrieveQuestions: aUser
	
	^self lastQuestionsFrom: ( 
		self sortQuestionsFrom: ( aUser questionsFromTopics )
			) withoutQuestionsByUser: aUser