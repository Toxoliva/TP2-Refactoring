retrieving
retrieveQuestions: aUser
	| relevantPopularQuestionFromToday averageVotes|
	relevantPopularQuestionFromToday := OrderedCollection new.
	cuoora questions do: [ :q | ( q timestamp asDate = Date today ) ifTrue: [ relevantPopularQuestionFromToday add: q ]].
	averageVotes := (cuoora questions sum: [:q | q positiveVotes size ]) / relevantPopularQuestionFromToday size.
	relevantPopularQuestionFromToday := (relevantPopularQuestionFromToday select:[:q | q positiveVotes size >= averageVotes ]) asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
	relevantPopularQuestionFromToday := relevantPopularQuestionFromToday last: (100 min: relevantPopularQuestionFromToday size).
	
	^relevantPopularQuestionFromToday reject:[:q | q user = aUser].