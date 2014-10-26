## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## In this function I am:
##   -setting the value of the matrix,
##   -getting the value of the matrix,
##   -setting the value of the inverse
##   -getting the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setMatrix <- function(solve) M <<- solve
    getMatrix <- function() m
    list(set = set, get = get,
         setMatrix = setMatrix,
         getMatrix = getMatrix)
}


## Write a short comment describing this function
## In this function I am testing to see if the value of the inverse has been computed
## If it has, I'm printing that value from the cache. If it hasn't, I'm calculating it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getMatrix()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matrix <- x$get()
  m <- solve(matrix, ...)
  x$setMatrix(m)
  m
}
