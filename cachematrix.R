## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
m <- NULL
            set <- function(y) {
                    x <<- y
                    soln <<- NULL
            }
            get <- function() x
            setinverse <- function(s) soln<<- s
            getinverse <- function() soln

}


## This function calculates the inverse of a matrix if the result has not been
##calculated. Otherwise, it finds the result of the calculation instead of calculating
##the inverse again 

cacheSolve <- function(x, ...) {
        soln=x$getinverse
		if(is.null(soln)==FALSE)
		{
		print("Getting cached data")
		return (soln) #Solution has already been found, so it does 
		#not need to be calculated again.
		}
		else
		{
		#Since the inverse of the matrix has not been calculated,
		#we must calculate the inverse
		soln=solve(x)
		setinverse(soln)
		}
}
