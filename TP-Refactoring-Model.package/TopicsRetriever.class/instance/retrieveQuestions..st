retrieving
retrieveQuestions: aUser
	| relevantQuestionFromTopics |
	relevantQuestionFromTopics := aUser topics flatCollect: [ :topic | topic questions ].
	relevantQuestionFromTopics := relevantQuestionFromTopics asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
	relevantQuestionFromTopics := relevantQuestionFromTopics last: (100 min: relevantQuestionFromTopics size).
	
	^relevantQuestionFromTopics reject:[:q | q user = aUser].