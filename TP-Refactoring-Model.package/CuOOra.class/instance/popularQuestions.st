retrieving
popularQuestions
	^ self questionsFromToday
		select: [ :q | q positiveVotes size >= self averageVotes ]