n <- 8
iterationen<- 1e6
count <- 0
for (i in 1:iterationen) {
     mark <- 1:n 	# Geschenke werden nummieriert
     draw <- sample(mark)	# Geschenke werden verteilt
     if (all(draw != mark)) {   #überprüfen, ob niemand sein eigenes Geschenk erhält
         count <- count + 1
     } 
}
count / iterationen