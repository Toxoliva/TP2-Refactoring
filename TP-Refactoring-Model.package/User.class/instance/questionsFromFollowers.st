retrieving
questionsFromFollowers
	^ following flatCollect: [ :follow | follow questions ]