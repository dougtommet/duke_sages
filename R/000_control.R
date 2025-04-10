
quarto::quarto_render(here::here("R", "000_master.qmd"), output_format = "html")


fs::file_move(here::here("R", "000_master.html"),
              here::here("Reports", stringr::str_c("CCI-GCP-equating_", Sys.Date(),".html")))


