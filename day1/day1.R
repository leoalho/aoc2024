df <- read.delim("./day1.txt", sep ="", header = FALSE)
sum(abs(sort(df$V1)-sort(df$V2))) #Part1
sum(df$V1 * sapply(df$V1, function(x) sum(df$V2 == x))) #Part2