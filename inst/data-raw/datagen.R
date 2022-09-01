# Regenerate data frame

lemmatab <- dplyr::select(readr::read_csv("data-raw/ntvocab.csv"), type:freq)
use_data(lemmatab, internal = TRUE, overwrite = TRUE, version = 3)
