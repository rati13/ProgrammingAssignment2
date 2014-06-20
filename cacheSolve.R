### This function computes inversion matrix and saves it into a cache - so if we
### want to compute it again we take it from cache and we don't have to 
### compute it again.
        
## Write a short comment describing this function
        
        cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cacheSolve <- function(x, ...) {               # funcion calculates inversion of matrix
                m <- x$getinverse()                    # returns cache into m (local variable of this function)
                if(!is.null(m)) {                      # it checks if the returned cache has anything in it (when we called it for the first time, it's FALSE)
               message("getting cached data")          # if m isn't empty, it returns this message
                return(m)                              # and m (=returns cache)
                }
                data <- x$get()                        # saves matrix into local variable data
                m <- solve(data, ...)                  # puts matrix inversion into local variable m
                x$setinverse(m)                        # stores inversion into cache
                m                                      # returns inversion for user who called the funcion
                }
        }
