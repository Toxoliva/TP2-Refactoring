retrieving
retrieveQuestions: aUser
	| relevantQuestionsFromFollowers |
	relevantQuestionsFromFollowers := OrderedCollection new.
	
	aUser following do: [ :follow | relevantQuestionsFromFollowers addAll: follow questions ].
	relevantQuestionsFromFollowers := relevantQuestionsFromFollowers asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
	relevantQuestionsFromFollowers := relevantQuestionsFromFollowers last: (100 min: relevantQuestionsFromFollowers size).
	
	^relevantQuestionsFromFollowers reject: [ :q | q user = aUser].