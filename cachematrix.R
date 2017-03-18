## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function that creates a special matrix
##and cache's the inverse using the <<- operator
makeCacheMatrix <- function(x = matrix()) {
  invMatrix <- NULL
  
  set <- function(y){
    x <<- y
    invMatrix <<- NULL
  }
  
  get <- function() x
  
  setInvmatrix <- function(iMatrix) invMatrix <<- iMatrix
  
  getInvmatirx <- function()invMatrix
  
  list(set = set, get = get,
       setInvmatrix = setInvmatrix,
       getInvmatirx = getInvmatirx)
}


## Write a short comment describing this function
##Checks if an inverse has already been calculated
+##If not it sets the inverse of the matrix
+##If yes, it prints a message and retrieves the cached inverse matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        invMatrix <- x$getInvmatirx()
  
  if(!is.null(invMatrix)){
    message("getting cached data")
    return(invMatrix) 
    
  }
  
  data <- x$get()
  
  invMatrix <- solve(data,...)
  x$setInvmatrix(invMatrix)
  
  invMatrix
}
