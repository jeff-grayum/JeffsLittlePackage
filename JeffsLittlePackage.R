#Creating bigload function.
bigload <- function(package){
  package <- deparse(substitute(package))
  if (!requireNamespace(package, quietly = TRUE)) {
    install.packages(package)
  }
  if (!require(package, character.only = TRUE)) {
    stop("Failed to load package: ", package)
  }
}

