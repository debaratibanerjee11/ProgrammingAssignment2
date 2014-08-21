## Author: Debarati Banerjee
## cacheSolve:   The cacheSolve function takes a matrix as input and finds the inverse of the matrix.
## If the matrix inverse already exists then it retrieves the inverse from the cache.
## makeCacheMatrix : This function creates a special matrix that could be retrieved by cacheSolve when the inverse of a similar matrix is demanded.
## oldmat : stores the old matrix to be ccompared with the current given matrix.
## matequal: The function compares whether the two matrices are equal or not.

##Procedure:  Create a matrix of your choice and pass it as an argument to cacheSolve function.If it is a new matrix without its inverse present in the cache,
## cacheSolve would calculate the inverse and return the result
## If the newly entered matrix is same as a matrix entered earlier and its inverse is present in the cache then the function cacheSolve would call makeCacheMatrix 
## and bring the inverse from the cache without the need of calculating it again.
##------- Whether the matrices are equal or not would be tested using the function matequal



oldmat<-NULL
matequal <- function(x, y){
is.matrix(x) && is.matrix(y) && dim(x) == dim(y) && all(x == y)
}
makeCacheMatrix<- function(y){ 
cach <<-y
}
cacheSolve<-function(x) {
if(!is.null(m) && (matequal(x,oldmat)))
{
message("getting cached data")
return (cach)
}
else
{
oldmat <<-x
m <-solve(x)
return (m)
makeCacheMatrix(m)
}
}
  
