retrieving
questionsFromToday
	^ questions select: [ :q | q timestamp asDate = Date today ]