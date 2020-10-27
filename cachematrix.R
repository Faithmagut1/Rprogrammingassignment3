##Assignment 3

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()){
  #Insert martrix 
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  #get the martrix value cached with set matrix
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  #create a list to house the four factors
}


## Write a short comment describing this function
cacheSolve <- function(x, ...){
  
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)# compute the value of the inverse of the input matrix
  x$setInverse(inv)# run the setinverse function on the inverse to cache the inverse
  m # return the inverse
  inv
}




