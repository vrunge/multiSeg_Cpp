
getwd()
setwd("C:/Users/runge/Dropbox/PostDoc/zCprog/CmultiDim")


# M_means = matrix of the means
# V_changes = vector with the position of changepoint, last = 1, first > 0, <1
# sigma = standard deviation

dataG <- function(n, M_means, V_changes, sigma = 1){
  p <- dim(M_means)[2]
  M <- matrix(0,n,p)
  for (i in 1:n){
    index <- which(V_changes>=i/n)[1]
    M[i,] <- rnorm(p,M_means[index,],sigma)
  }
  write.table(M, file='dataG.txt', row.names=FALSE, col.names=FALSE)
  return(M)
}

#EXAMPLES
means <- matrix(c(0,1,2,1,0,1,2,2,0),3,3)
changes <- c(0.3,0.6,1)

dataG(50,means,changes, 0)



means <- matrix(c(0,1,2,1,0,1,2,2,0,1,1,1),3,4)
changes <- c(0.3,0.6,1)

dataG(100,means,changes, 0.3)


