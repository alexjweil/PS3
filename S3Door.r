door = structure(list(value = 1), class = "door")

PlayGame = function(door) {
	return(UseMethod("door", door))
}

PlayGame.door = function(door) {
	correct.door = sample(1:3, 1)
	if (door == correct.door) {
		print("Congratulations! You picked the correct door!")
	} else {
		print("Bummer! You picked an incorrect door!")
	}
}