## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(mtrix = matrix()) {
  solved <- NULL
  
  setmatrix <- function(m) {
    mtrix <<- m
    solved <<- NULL
  }
  
  getmatrix <- function() {
    mtrix
  }

  setsolve <- function(solved) {
    solved <<- solved
  }
  
  getsolve <- function() {
    solved
  }
  
  list(setmatrix = setmatrix, getmatrix = getmatrix,
       setsolve = setsolve,   getsolve = getsolve)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse_x <- x$getsolve()
  if ( (!is.null(inverse_x)) ) {
    message("getting cached data")
    return(inverse_x)
  }
  data <- x$getmatrix()
  inverse_x <- solve(data)
  x$setsolve(inverse_x)
  return(inverse_x)
}
