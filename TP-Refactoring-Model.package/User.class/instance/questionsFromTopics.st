retrieving
questionsFromTopics
	^ topics flatCollect: [ :topic | topic questions ]