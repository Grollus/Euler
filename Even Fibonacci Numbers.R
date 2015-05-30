fibonacci <- function(terms){
  terms <- terms
  fib.seq <- numeric(terms)
  fib.seq[1] <- 1
  fib.seq[2] <- 2
  for(i in 3:terms){
    fib.seq[i] <- fib.seq[i - 1] + fib.seq[i - 2]
  }
  print(fib.seq)
}

first.100 <- fibonacci(100)
first.100.no4 <- first.100[which(first.100 < 4000000)]

sum <- 0
for(i in 1:32){
  if(first.100.no4[i] %% 2 == 0){
    sum <- sum + first.100.no4[i]
  }
  print(sum)
}

