#Import tidyverse
library(tidyverse)
#Read date file
q1_2026_data = read_csv("data/2026_q1.csv")
#I expect 54 rows and 4 columns before I add columns later on, use 3 checks
dim(q1_2026_data)
names(q1_2026_data)
summary(q1_2026_data)
#30 comes from the situation where it states that claims should be closed within 30 days
max_days_to_close <- 30
#Clean data
q1_2026_data <- q1_2026_data |>
  mutate(days_to_close_clean = ifelse(days_to_close == -1, NA, days_to_close))
q1_2026_data <- q1_2026_data |>
  mutate(late = days_to_close_clean > max_days_to_close)
#Analyze data and create summary
q1_2026_summary = q1_2026_data |>
  group_by(claim_type) |>
  summarise(
    claims = sum(!is.na(days_to_close_clean)),
    claims_open = sum(is.na(days_to_close_clean)),
    Mean_Days = mean(days_to_close_clean, na.rm = TRUE),
    Pct_Late = mean(late, na.rm = TRUE)
  )
#Output summary
q1_2026_summary

#save
write_csv(q1_2026_data, file = "output/FINAL2.csv")
