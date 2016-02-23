check_door = function(object) {
	valid.doors = 1:3
	if (object@value %in% valid.doors) {
		return(TRUE)
	}
	error.message = paste0(
		"Doors must be in the range [", toString(range(valid.doors)),
		"]. The value provided was ", object@value, ".")
	return(c(character(), error.message))
}

setClass("door", representation(value = "numeric"), validity = check_door)


setGeneric("PlayGame", function(object) {
	standardGeneric("PlayGame")
})

setMethod("PlayGame", signature(object = "door"), function(object) {
	correct.door = sample(1:3, 1)
	if (object@value == correct.door) {
		print("Congratulations! You picked the correct door!")
	} else {
		print("Bummer! You picked an incorrect door!")
	}
})


