calculating
positiveVotes
	^ votes select: [ :vote | vote isLike ]