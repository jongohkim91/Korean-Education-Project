# Example preprocessing script.
data <- f11_h_youth
colnames(data)[1] <- "BYSID"
rm(f11_h_youth)

cache('data')