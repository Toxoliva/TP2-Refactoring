retrieving
retrieveQuestions: aUser
	| relevantQuestionFromTopics |
	relevantQuestionFromTopics := OrderedCollection new.
	
	aUser topics do:[ :topic | relevantQuestionFromTopics addAll: topic questions ].
	relevantQuestionFromTopics := relevantQuestionFromTopics asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
	relevantQuestionFromTopics := relevantQuestionFromTopics last: (100 min: relevantQuestionFromTopics size).
	
	^relevantQuestionFromTopics reject:[:q | q user = aUser].