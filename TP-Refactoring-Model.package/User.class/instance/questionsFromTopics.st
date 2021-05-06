retrieving
questionsFromTopics
	^ self topics flatCollect: [ :topic | topic questions ]