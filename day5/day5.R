input <- readLines("C:/Users/leoal/Documents/aoc2024/day5/day5.txt")

or <- sapply(strsplit(input[grep("\\|", input)], "\\|"), as.integer)
upd <- lapply(strsplit(input[grep(",", input)], ","), as.integer)


check_order <- function(x) {
  
  or2 <- or[,apply(or, 2, \(z) sum(x %in% z) == 2L)] #subset of relevant orders
  x2 <- as.integer(names(sort(-table(or2[1, ])))) # sort x 
  x2 <- c(x2, setdiff(x, or2[1,]))
  
  x2[(length(x) + 1) / 2] * if (identical(x2, x)) 1 else -1
  
}

res <- sapply(upd, check_order)

# part 1
sum(res[res > 0])

# part 2
sum(-res[res < 0])