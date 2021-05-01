retrieving
retrieveQuestions: aUser
	| relevantQuestionsFromToday |
	relevantQuestionsFromToday:= OrderedCollection new.
	
	cuoora questions do: [:q | (q timestamp asDate = Date today) ifTrue: [relevantQuestionsFromToday add: q]].
	relevantQuestionsFromToday := relevantQuestionsFromToday asSortedCollection:[ :a :b | a positiveVotes size > b positiveVotes size ].
	relevantQuestionsFromToday := relevantQuestionsFromToday last: (100 min: relevantQuestionsFromToday size).
	
	^relevantQuestionsFromToday reject:[:q | q user = aUser].