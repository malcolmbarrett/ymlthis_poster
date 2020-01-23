library(ymlthis)
yml()

yml() %>%
  yml_author(c("Yihui Xie", "Hadley Wickham"), affiliation = "RStudio")

yml() %>%
  yml_author(c("Yihui Xie", "Hadley Wickham"), affiliation = "RStudio") %>%
  yml_date(lubridate::today()) %>%
  yml_output(
    pdf_document(keep_tex = TRUE, includes = includes2(after_body = "footer.tex")),
    bookdown::html_document2()
  ) %>%
  yml_latex_opts(biblio_style = "apalike")
