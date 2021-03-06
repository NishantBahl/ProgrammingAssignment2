
##Function makeCacheMatrix
makeCacheMatrix <- function(x = matrix()) {
  value <- NULL
  set <- function(y) {
    x <<- y
    value <<- NULL
  }
  ##get and set the inverse of matrix
  get <- function() x
  inverse_set <- function(inverse) value <<- inverse 
  inverse_get <- function() value
  list(set = set,
       get = get,
       inverser_set = inverser_set,
       inverse_get = inverse_get)
}

##Function cacheSolve
cacheSolve <- function(x, ...) {
  ##get the inverse of matrix
  value <- x$inverse_get()
  if (!is.null(value)) {
    message("get data")
    return(value)
  }
  mat <- x$get()
  value <- solve(mat, ...)
  x$inverse_set(value)
  return(value)  
  ##return
}
