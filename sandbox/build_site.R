# Authors@R: person("Prof. A. Roles", email = "", role = c("aut", "cre"))

# you have to activate github pages before the site will exist
# remotes::install_github("aroles/biol322")
# run above if updated R otherwise package will not be found
# also install any packages needed

# This clears out the old website and rebuilds every article from scratch
 pkgdown::clean_site()
 pkgdown::build_site(devel = FALSE)

# run below to rebuild the site
pkgdown::build_site_github_pages()

base_sheets <- file.path(here::here(), 'sheets')
articles_sheets <- file.path(here::here(), 'docs', 'articles', 'sheets')

fs::dir_copy(base_sheets, articles_sheets)


# Tell Gemini:
# give the rmd header to use
# tell it the file location for images is "../man/figures/filename"