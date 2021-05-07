retrieving
lastQuestionsFrom: aCollection
	^ aCollection
		last: (self maxSizeOfQuestionCollection min: aCollection size)