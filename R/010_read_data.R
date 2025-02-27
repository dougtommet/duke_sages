
# Sages I Data
sagesI_560_df <- read_dta(fs::path(sages_datapath, "N560.dta"))
sagesI_df <- read_dta(fs::path(sages_datapath, "SAGES-Subject-Interview-Data-Analysis-File.dta"))

sagesI_df <- sagesI_560_df %>%
  left_join(sagesI_df, by = c("studyid"="studyid"))


intuit_df <- readxl::read_xlsx(fs::path(duke_datapath, "MADCOPC_INTUIT_DukeCCI.xlsx"))


saveRDS(sagesI_df,       file=fs::path(r_objects, "010_sagesI_df.rds"))
saveRDS(intuit_df,       file=fs::path(r_objects, "010_intuit_df.rds"))

