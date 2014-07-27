## Matrix object with inverse matrix function that caches the inverse in the object


## The matrix object that contain the matrix and the potentially inversed matrix
## It also has public functons to make the variables accessible

makeCacheMatrix <- function(mat = matrix()) {
    #Init of variables
    inv <- NULL
    
    #Public functions
    set <- function(mat_set){
            mat <<- mat_set
            inv <<- NULL # resets the inv to not use inv of old matrix
    }

    get <- function() mat
    setinv <- function( inv_set ) {
        inv <<- inv_set    
        return(inv)
    }
    
    getinv <- function( ) inv

    #Makes the functions available public
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)){
            return(inv)
        }
        
        x$setinv(solve(x$get(), ...)) #returns the inv also
}




##testcases

inversible_matrix <- matrix(c(2, 5, 7, 3, 2, 3, 4, 5, 1), nrow = 3, ncol = 3)

#cachematrix <- makeCacheMatrix(inversible_matrix)
#cacheSolve(cachematrix)

#first tried to make a list of the objects and loop through them but wasn't so easy as other languages...
matrix1 <- makeCacheMatrix(inversible_matrix)
matrix2 <- makeCacheMatrix(inversible_matrix)
matrix3 <- makeCacheMatrix(inversible_matrix)
matrix4 <- makeCacheMatrix(inversible_matrix)
matrix5 <- makeCacheMatrix(inversible_matrix)
matrix6 <- makeCacheMatrix(inversible_matrix)
matrix7 <- makeCacheMatrix(inversible_matrix)
matrix8 <- makeCacheMatrix(inversible_matrix)
matrix9 <- makeCacheMatrix(inversible_matrix)
matrix10 <- makeCacheMatrix(inversible_matrix)
matrix11 <- makeCacheMatrix(inversible_matrix)
matrix12 <- makeCacheMatrix(inversible_matrix)
matrix13 <- makeCacheMatrix(inversible_matrix)
matrix14 <- makeCacheMatrix(inversible_matrix)
matrix15 <- makeCacheMatrix(inversible_matrix)
matrix16 <- makeCacheMatrix(inversible_matrix)
matrix17 <- makeCacheMatrix(inversible_matrix)
matrix18 <- makeCacheMatrix(inversible_matrix)
matrix19 <- makeCacheMatrix(inversible_matrix)
matrix20 <- makeCacheMatrix(inversible_matrix)
matrix21 <- makeCacheMatrix(inversible_matrix)
matrix22 <- makeCacheMatrix(inversible_matrix)
matrix23 <- makeCacheMatrix(inversible_matrix)
matrix24 <- makeCacheMatrix(inversible_matrix)
matrix25 <- makeCacheMatrix(inversible_matrix)
matrix26 <- makeCacheMatrix(inversible_matrix)
matrix27 <- makeCacheMatrix(inversible_matrix)
matrix28 <- makeCacheMatrix(inversible_matrix)
matrix29 <- makeCacheMatrix(inversible_matrix)
matrix30 <- makeCacheMatrix(inversible_matrix)
# 30 matrices

ptm <- Sys.time()

invisible(cacheSolve(matrix1))
invisible(cacheSolve(matrix2))
invisible(cacheSolve(matrix3))
invisible(cacheSolve(matrix4))
invisible(cacheSolve(matrix5))
invisible(cacheSolve(matrix6))
invisible(cacheSolve(matrix7))
invisible(cacheSolve(matrix8))
invisible(cacheSolve(matrix9))
invisible(cacheSolve(matrix10))
invisible(cacheSolve(matrix11))
invisible(cacheSolve(matrix12))
invisible(cacheSolve(matrix13))
invisible(cacheSolve(matrix14))
invisible(cacheSolve(matrix15))
invisible(cacheSolve(matrix16))
invisible(cacheSolve(matrix17))
invisible(cacheSolve(matrix18))
invisible(cacheSolve(matrix19))
invisible(cacheSolve(matrix20))
invisible(cacheSolve(matrix21))
invisible(cacheSolve(matrix22))
invisible(cacheSolve(matrix23))
invisible(cacheSolve(matrix24))
invisible(cacheSolve(matrix25))
invisible(cacheSolve(matrix26))
invisible(cacheSolve(matrix27))
invisible(cacheSolve(matrix28))
invisible(cacheSolve(matrix29))
invisible(cacheSolve(matrix30))


sprintf("First calculation took %f seconds", Sys.time() - ptm)
#[1] "First calculation took 0.004490 seconds"




ptm <- Sys.time()


invisible(cacheSolve(matrix1))
invisible(cacheSolve(matrix2))
invisible(cacheSolve(matrix3))
invisible(cacheSolve(matrix4))
invisible(cacheSolve(matrix5))
invisible(cacheSolve(matrix6))
invisible(cacheSolve(matrix7))
invisible(cacheSolve(matrix8))
invisible(cacheSolve(matrix9))
invisible(cacheSolve(matrix10))
invisible(cacheSolve(matrix11))
invisible(cacheSolve(matrix12))
invisible(cacheSolve(matrix13))
invisible(cacheSolve(matrix14))
invisible(cacheSolve(matrix15))
invisible(cacheSolve(matrix16))
invisible(cacheSolve(matrix17))
invisible(cacheSolve(matrix18))
invisible(cacheSolve(matrix19))
invisible(cacheSolve(matrix20))
invisible(cacheSolve(matrix21))
invisible(cacheSolve(matrix22))
invisible(cacheSolve(matrix23))
invisible(cacheSolve(matrix24))
invisible(cacheSolve(matrix25))
invisible(cacheSolve(matrix26))
invisible(cacheSolve(matrix27))
invisible(cacheSolve(matrix28))
invisible(cacheSolve(matrix29))
invisible(cacheSolve(matrix30))


sprintf("Second calculation took %f seconds", Sys.time() - ptm)
#[1] "Second calculation took 0.001870 seconds"
