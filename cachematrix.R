## Solve the inverse of a matrix without repeated redundant computation

makeCacheMatrix <- function(x = matrix()) {
s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setInv <- function(solve) s <<- solve
  getInv <- function() s
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}


##	1.	set the value of the matrix
##	2.	get the value of the matrix
##	3.	set the value of the inverse
##	4.	get the value of the inverse


cacheSolve <- function(x, ...) {
       s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setInv <- function(solve) s <<- solve
  getInv <- function() s
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}

## Calculate the inverse but before that, check wheather it has been calculated
