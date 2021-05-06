retrieving
questionsFromFollowers
	^ self following flatCollect: [ :follow | follow questions ]