cacheSolve <- function(x, ...) {
  sol <- x$getsolve()
  
  if(!is.null(sol)) {
    message("get data cached.")
    return(sol)
  }
  
  data <- x$get()
  sol <- solve(data, ...)
  x$setsolve(sol)
  sol

}
