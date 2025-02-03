wichtel_unglueck <- function(n, k, iterationen = 1e6) {
  count <- 0  
  
  for (i in 1:iterationen) {
    mark <- 1:n
    draw <- sample(mark)
    
    matching <- sum(draw==mark)
    
    if (matching <= k)
      count <- count + 1
    
  }
  probability <- count / iterationen
  return(probability)
}
wichtel_unglueck(n = 8, k = 0, iterationen = 1e6)