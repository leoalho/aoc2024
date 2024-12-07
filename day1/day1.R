input_filename <- "C:/Users/leoal/Documents/aoc2024/day2/day2.txt"
input <- lapply(unlist(lapply(readLines(input_filename), strsplit, split = " "), recursive = FALSE), as.numeric)
input