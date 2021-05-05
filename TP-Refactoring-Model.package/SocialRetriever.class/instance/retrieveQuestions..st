retrieving
retrieveQuestions: aUser
	| relevantQuestionsFromFollowers |
	relevantQuestionsFromFollowers := aUser following flatCollect: [ :follow | follow questions ].
	relevantQuestionsFromFollowers := relevantQuestionsFromFollowers asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
	relevantQuestionsFromFollowers := relevantQuestionsFromFollowers last: (100 min: relevantQuestionsFromFollowers size).
	
	^relevantQuestionsFromFollowers reject: [ :q | q user = aUser].