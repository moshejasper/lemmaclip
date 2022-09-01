#' Filter lemmas to clipboard
#'
#' @param lower positive int. lowest NT vocab freq. to include.
#' @param upper positive int. include NT vocab BELOW this frequency (i.e. not this frequency).
#'
#' @return clips lemma query to clipboard. Returns tibble of clipped lemmas with relevant data
#' @export
#'
#' @examples
#' lemmaclip(25)
lemmaclip <- function(lower, upper = 50000){
  lemtab <- lemmatab %>% filter(.data$freq < upper, .data$freq >= lower)
  lemmas <- lemtab %>% select(lemma) %>% unlist %>% as.vector()
  lems <- character(0)
  for (lemma in lemmas){
    lems <- append(lems, paste0("lemma:", lemma))
  }
  final <- paste0(lems, collapse = " OR ")
  utils::writeClipboard(final, 13)
  message("Lemmas copied to clipboard!")
  message("---------------------------\n")
  return(lemtab)
}
