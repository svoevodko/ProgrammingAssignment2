## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inm <- NULL
	set <- function(y) {
	  x <<- y
	  inm <<- NULL
	}
	get <- function() x
	setinvmatrix <- function(invmatrix) inm <<- invmatrix
	getinvmatrix <- function() inm
	list(set=set, get=get, setinvmatrix=setinvmatrix, getinvmatrix=getinvmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inm <- x$getinvmatrix()
	if(!is.null(inm)) {
	  message("getting cached data.")
	  return(inm)
	}
	data <- x$get()
	inm <- solve(data)
	x$setinvmatrix(inm)
	inm
}
