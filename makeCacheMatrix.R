        # Programming Assignment 2: Caching the Inverse of a Matrix
        ## My functions are useful when we want to compute an inversion of 
        ## matrix repeatedly. 
        
        ## Write a short comment describing this function
        
        ### The first function change matrix from user to a useful list of functions 
        ### which is used in second function. 
        ### I think that the most important part is the cache where we can store 
        ### the inversion for later calculations.
        ### Everything is explain (in detail) in the function itself.
                        
                makeCacheMatrix <- function(x = matrix()) {        # takes an argument (class = matrix) from user
                        m <- NULL                                  # setting cache for this function
                        set <- function(y) {                       # setting first subfunction
                        x <<- y                                    # it takes the matrix and assigns it a variable named x; super assignment operator means that we change variable x in the parent environment
                        m <<- NULL                         # this clears cache m; super assignment operator means that we change variable m in the parent environment
                        }
                        get <- function() x                        # setting second subfunction; returns matrix itself
                        setinverse <- function(solve) m <<- solve  # setting third subfunction; assigns inversion (=input) to object m
                        getinverse <- function() m                 # setting fourth subfunction; returns matrix inversion = returns cache
                        list(set = set, get = get,                 # creates a list of four subfunctions, which will be returned by makeCacheMatrix
                        setinverse = setinverse, 
                        getinverse = getinverse)
                        }
                
        
