retrieving
lastQuestionsFrom: aCollection withoutQuestionsByUser: aUser
	^ (self lastQuestionsFrom: aCollection)
		reject: [ :q | q user = aUser ]