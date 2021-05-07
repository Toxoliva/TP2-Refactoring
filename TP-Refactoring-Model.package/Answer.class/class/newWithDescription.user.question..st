instance creation
newWithDescription: aDescription user: aUser question: aQuestion
	^ self new
		initializeDescription: aDescription user: aUser question: aQuestion;
		yourself