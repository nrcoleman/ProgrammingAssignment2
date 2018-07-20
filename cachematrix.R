x=x3
##This function makes a cached matrix. It prepares a specific matrix to be put in and resets the value of x.It sets solution to null. Once a solution has been calculated, it takes this solution and stores it in a variable x for future computations.

makeCacheMatrix <- function(x = matrix()) {
  soln<-NULL
            set <- function(y) {
                    x <<- y
                    soln <<- NULL
            }
            get <- function() x
            setinverse <- function(inv) soln<<- inv
            getinverse <- function() soln
            setinverse(soln)
            getinverse()
            list(set = set, get = get,
                 setinverse = setinverse,
                 getinverse = getinverse)

}

## This function calculates the inverse of a matrix if the result has not been
##calculated. Otherwise, it finds the result of the calculation instead of calculating
##the inverse again 
xtemp=zeros(10)#Matrix is assumed to be invertible
cacheSolve <- function(x, ...)
  { 
        #soln<-x$getinverse()
        print("Solution reached")
        soln
		if(!is.null(soln))
		{
		print("Getting cached data")
		return (soln) #Solution has already been found, so it does 
		#not need to be calculated again.
		}
		else
		{
		#Since the inverse of the matrix has not been calculated,
		#we must calculate the inverse
		data<-x$get()
		soln<-solve(data,...)
		x$setinverse(soln)
		return(soln)
		}
}
x1=makeCacheMatrix(x)
soln=cacheSolve(x1)
soln