gsr <- function(Source, Search, Replace) { 
    if (length(Search) != length(Replace))     stop("Search and Replace Must Have Equal Number of Items\n")
    Changed <- as.character(Source)
    for (i in 1:length(Search))
    {
      cat("Replacing: ", Search[i], " With: ", Replace[i], "\n")
      Changed <- replace(Changed, Changed == Search[i], Replace[i])   }
    cat("\n")
    Changed
  }