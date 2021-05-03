retrieving
retrieveQuestions: aUser
	| relevantQuestionsFromToday |
	
   relevantQuestionsFromToday := cuoora questions select: [ :q | q timestamp asDate = Date today ].	
	relevantQuestionsFromToday := relevantQuestionsFromToday asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
	relevantQuestionsFromToday := relevantQuestionsFromToday last: (100 min: relevantQuestionsFromToday size).
	
	^relevantQuestionsFromToday reject:[:q | q user = aUser].