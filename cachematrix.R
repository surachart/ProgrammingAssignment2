## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL ## set m to NULL

        set <- function(y) { ## function to store the Matrix.
                x <<- y 
                m <<- NULL ## set m to NULL
        }

        get <- function() x ## function to return the Matrix.
        setInverse <- function(inverse) m <<- inverse ## invert the matrix 
        getInverse <- function() m ## get inverese matrix
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getInverse() ##  Get value for m.
        if (!is.null(m)) { ## Check Null for m value.
                message("getting cached data")
                return(m)
        }

        data <- x$get()
	inv <- solve(data, ...)
	x$setInverse(inv)
	m
}
