calculating
negativeVotes
	^ votes reject: [ :vote | vote isLike ]