# fill _bookdown.yml file with list of Rmd files

build_bookdown_yml <- function(poems) {
  infile <- '_bookdown.yml'
  cat('rmd_files: [\n', file = infile)
  cat('  "index.Rmd",\n', sep = '', file = infile, append = TRUE)
  # start unordered list
  minus_last <- length(poems) - 1
  for (poem in poems[1:minus_last]) {
    cat('  "', poem, '",\n', sep = '', file = infile, append = TRUE)
  }
  # last poem
  cat('  "', poems[length(poems)], '"\n', sep = '', file = infile, append = TRUE)
  cat(']', file = infile, append = TRUE)
}


all_files <- dir()
poems <- grep('*.Rmd', all_files, value = TRUE)
poems <- poems[!grepl("index.Rmd", poems)]
build_bookdown_yml(poems)