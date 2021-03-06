## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#The following function creates a "matrix" that is actually a list containing a function to: 1)set the value of the matrix, 2)get the value of the matrix, 3)set the value of the inverse and 4) get the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {

   inv<-NULL
    
    set <- function(y) {
        x <<- y
        inv <<- NULL    
    }
    
    get <- function() x
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
    

}


## Write a short comment describing this function
#The following function calculates the mean of the "matrix" created by makeCacheMatrix. First checks to see if the inverse has already been computed, if so, it get the inverse from the cache, otherwise computes the inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

   inv <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data, ...)
    x$setinverse(inv)
    inv

}
