## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(a, ...) {
  inv <- x$getInverse()
  if(!is.null(inv)){
    message("retriving inverse from cache")
    print(inv)
    return(inv)
  }
  
  inv <- solve(a)
  x$setInverse(inv)
  print(inv)
        ## Return a matrix that is the inverse of 'x'
}

mat <- matrix(c(1,3,2,4), nrow = 2)

x <- makeCacheMatrix()

x$set(mat)
x$get()

y <- cacheSolve(x$get())

