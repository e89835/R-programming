## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL                             
    set <- function(y) {                    ## define function 
        x <<- y                             ## value of matrix 
        inv <<- NULL                        ## if there is a new matrix reset inv
    }
    get <- function() x                     ## function return

    setinverse <- function(inverse) inv <<- inverse  ## put inv value
    getinverse <- function() inv                     ## get inf value
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)  ## refer functions dolar operator
}


## Write a short comment describing this function

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
