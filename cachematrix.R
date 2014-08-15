## Cache potentially time-consuming computations

## Create a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  
  set <- function(y) {                  #set the value of the vector
    x <<- y
    m <<- NULL
    
  }
  
  get <- function() x                   #get the value of the vector
  
  setmean <- function(mean) m <<- mean  #set the value of the mean
  
  getmean <- function() m               #get the value of the mean
  
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}
}


## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
  m <- x$getmean()    #get the value of the mean
  
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  data <- x$get()
  
  m <- solve(X)       #Compute the inverse of a square matrix
  
  x$setmean(m)
  
  m 
}
