## Programming Assignment 2: Caching the Inverse fo a Matrix

## Function creates matrix, which can inverse in cache

makeCacheMatrix <- function(x = matrix()) {
	a<-NULL
	set<-function(b){
	x<<-b
	a<<-NULL
}
Get<-function() x
setmatrix<-function(solve)  a<<- solve
getmatrix<-function()  a
list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix)
}


## Calculate  inverse for matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	a<-x$getmatrix()
	if(!is.null(a)){
		message(“get cached data”)
		return(a)
	}
	mat<-x$get
	a<-solve(mat,…)
	x$setmatrix(a)
	a
}
