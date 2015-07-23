x<-matrix(c(1,2,3,4),nrow=2,ncol=2)

#solucion
print(solve(x))

#solucion cacheada
cM<-makeCacheMatrix(x)
cacheSolve(cM)
cacheSolve(cM) #comprobamos que no repite la operacion

#solucion larga
cM<-makeCacheMatrix()
cacheSolve(cM)

cM$set(x)
cM$get()
cacheSolve(cM)

cM$getinv()
