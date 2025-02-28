
quarto::quarto_render(here::here("R", "000-master.qmd"), output_format = "html")


fs::file_move(here::here("R", "000-master.html"),
              here::here("Reports", stringr::str_c("CCI-GCP-equating_", Sys.Date(),".html")))


