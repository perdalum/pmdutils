#' Insert result of code run as comments in the editor
#'
#' @return
#' @export
#'
#' @examples
#' use Addins menu
run_n_pasteAddin <- function() {
  context <- rstudioapi::getActiveDocumentContext()

  expr_object <- eval(parse(text = context$selection[[1]]$text))
  rstudioapi::insertText(
    location = context$selection[[1]]$range$end,
    paste0("\n# ",expr_object)
  )
}
