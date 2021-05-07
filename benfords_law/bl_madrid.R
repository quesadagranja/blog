library(benford.analysis)

results <- data.table::fread(
  file   = "2021_madrid_municipalities.csv",
  header = TRUE,
  sep    = ";"
)

parties <- c("PP", "MÁS MADRID", "P.S.O.E.", "VOX", "PODEMOS-IU", "Cs")

for (ii in parties) {
  res <- as.numeric(results[[ii]])
  ben <- benford.analysis::benford(res, number.of.digits = 1)
  plot(ben)
}