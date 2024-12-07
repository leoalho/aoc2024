input <- readLines("./day7/day7.txt") |> strsplit("\\D+") |> lapply(as.numeric)

f <- function(z, part2 = FALSE) {
  res <- Reduce(\(x, y) c(x + y, x * y, if (part2) x * 10^(floor(log10(y) + 1)) + y), z[-1])
  if (any(res == z[1])) z[1] else 0
}

result1 <- sapply(input, f)

sprintf("%.f", sum(result1)) # Part 1

sprintf("%.f", sum(sapply(input[result1 == 0], f, part2 = TRUE)) + sum(result1)) # Part 2