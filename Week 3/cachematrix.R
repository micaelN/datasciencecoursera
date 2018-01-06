##The cachematrix.R script is a script composed of two functions to inverse a matrix. 
##In case the inversed matrix as already been calculated the data is stored and retrieved. 
##This script makes use of lexical scoping.

#The makeCacheMatrix function takes a matrix as argument. 4 functions can be called: set, get, setinversion, getinversion.

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    #The setter method will set the given y to the parent x. It has to be a matrix
    set <- function(size, nrow, ncol) {
      y <- matrix(size,nrow,ncol)
      x <<- y
      m <<- NULL
    }
    #The getter Method retrieves the value of x
    get <- function() x
    #The setinversion-function is accepting an argument solve that will set to m
    setinversion <- function(solve) m <<- solve
    #The getter for the inversion will retrieve the value of m
    getinversion <- function() m
    #Create a named list to be able to call the different functions
    list(set = set, get = get,
         setinversion = setinversion,
         getinversion = getinversion)
}


#The cacheSolve function checks if there is a cached inversed matrix and if yes it will return it. Else it calculates the inversed matrix and returns it.

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  
  m <- x$getinversion()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  #This will get the stored matrix in x
  data <- x$get()
  #This is the actual inversion method (solve)
  m <- solve(data, ...)
  #Using the setter method to store m
  x$setinversion(m)
  m
}
