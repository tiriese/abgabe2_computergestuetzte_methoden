n <- 8
iterationen<- 1e6
count <- 0
for (i in 1:iterationen) {
     mark <- 1:n
     draw <- sample(mark)
     if (all(draw != mark)) {
         count <- count + 1
     } 
}
count / iterationen