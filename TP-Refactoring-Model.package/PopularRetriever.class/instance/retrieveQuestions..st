retrieving
retrieveQuestions: aUser
	| relevantPopularQuestionFromToday averageVotes |
	relevantPopularQuestionFromToday := OrderedCollection new.
	relevantPopularQuestionFromToday := cuoora questionsFromToday.
	averageVotes := cuoora questionsPositiveVotesSum
		/ relevantPopularQuestionFromToday size.
	relevantPopularQuestionFromToday := (relevantPopularQuestionFromToday
		select: [ :q | q positiveVotes size >= averageVotes ])
		asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ].
	relevantPopularQuestionFromToday := relevantPopularQuestionFromToday
		last: (100 min: relevantPopularQuestionFromToday size).
	^ relevantPopularQuestionFromToday reject: [ :q | q user = aUser ]