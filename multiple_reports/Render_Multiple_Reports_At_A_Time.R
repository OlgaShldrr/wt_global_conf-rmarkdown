countries <- c("Austria", "Brazil", "Poland")
countries <- MOCK_DATA %>% select(country) %>% unique() %>% as.matrix()

for (i in 1:length(countries)) {
rmarkdown::render(output_file = paste0("multiple_reports/Monthly_Report_Template_", countries[i], ".Rmd"),
                  input = "Monthly_Report_Template_Country.Rmd",
                  run_pandoc = TRUE,
                  params = list(
                    country = countries[1]))
}

