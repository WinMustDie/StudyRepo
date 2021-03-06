print_means <- function(seq)
{
  cat("Mean: ", mean(seq), "\n")
  quartiles <- quantile(seq, names = FALSE)
  
  cat("Median: ", quartiles[3], "\n")
  cat("Extremals halfsum: ", (quartiles[1] + quartiles[5]) / 2, "\n")
  cat("Quartiles halfsum: ", (quartiles[2] + quartiles[4]) / 2, "\n")
}

seq1 <- c(-1.24, -0.75, 0.82, 0.57, 1.1, -0.61, -0.42, 0.67, 1.02, -1.56, -0.12, -0.37, 0.42, 0.36, -0.69, 0.86, -0.37, 1.06, 1.11, -0.31, -0.06)
seq2 <- c(1.2 ,-0.3 ,-1.03 ,0.05 ,0.95 ,0.84 ,0.55 ,1.46 ,0.3 ,1.05 ,-1.51 ,0.31 ,0.26 ,1.01 ,-1.73 ,0.79 ,-0.55 ,0.76 ,0.76 ,1.55 ,0.97)

print("Sequence 1: ")
print_means(seq1)
boxplot(seq1)
seq1[21] <- seq1[21]*10
boxplot(seq1)
print("Sequence 1': ")
print_means(seq1)

print("Sequence 2: ")
print_means(seq2)
seq2[21] <- seq2[21]*10
print("Sequence 2': ")
print_means(seq2)