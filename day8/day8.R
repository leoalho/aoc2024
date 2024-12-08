x <- read.fwf("day8.txt", widths = rep(1, 50)) |> as.matrix() |> as.character()

int2co <- \(k) (k - 1L) %/% 50 + 1L + ((k - 1L) %% 50 + 1L) * 1i

ant <- function(freq, part2 = FALSE) {
  f_co <- int2co(which(x == freq)) 
  f2 <- subset(expand.grid(a1 = f_co, a2 = f_co), a1 != a2)
  a3 <- f2$a1 + outer(f2$a1 - f2$a2, if (part2) (0:50) else 1, `*`)
  a3[Im(a3) > 0 & Re(a3) > 0 & Im(a3) < 51 & Re(a3) < 51]
}

unique(x[x != "."]) |> lapply(ant) |> unlist() |> unique() |> length() # Part1
unique(x[x != "."]) |> lapply(ant, part2=TRUE) |> unlist() |> unique() |> length() # Part2