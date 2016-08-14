## Put comments here that give an overall description of what your
## functions do

## Creates the makeCacheMatrix


makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(x) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) m <<- inverse
        getinv <- function() m
        list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Creates the CacheSolve function and produces the inverse matrix

        
cacheSolve <- function(x, ...) {
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        return(m)
}

