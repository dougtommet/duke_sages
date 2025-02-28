
# sagesI_df <- readRDS(file=fs::path(r_objects, "010_sagesI_df.rds"))
intuit_df <- readRDS(file=fs::path(r_objects, "010_intuit_df.rds"))

freq.gcp <- freqtab(round(intuit_df$gcp))
freq.cci <- freqtab(round(intuit_df$Duke_CCI*10))


gcp_to_cci <- equate(freq.gcp, freq.cci, type = "equipercentile")
gcp_to_cci_df <- gcp_to_cci$concordance %>%
  tibble() %>%
  mutate(yx = yx/10,
         se = se/10) %>%
  rename(gcp = scale) %>%
  rename(equivalent_cci = yx)

cci_to_gcp <- equate(freq.cci, freq.gcp, type = "equipercentile")
cci_to_gcp_df <- cci_to_gcp$concordance %>%
  tibble() %>%
  mutate(scale = scale/10) %>%
  rename(cci = scale) %>%
  rename(equivalent_gcp = yx)


saveRDS(freq.gcp,       file=fs::path(r_objects, "050_freq.gcp.rds"))
saveRDS(freq.cci,       file=fs::path(r_objects, "050_freq.cci.rds"))

saveRDS(gcp_to_cci,       file=fs::path(r_objects, "050_gcp_to_cci.rds"))
saveRDS(cci_to_gcp,       file=fs::path(r_objects, "050_cci_to_gcp.rds"))
saveRDS(gcp_to_cci_df,       file=fs::path(r_objects, "050_gcp_to_cci_df.rds"))
saveRDS(cci_to_gcp_df,       file=fs::path(r_objects, "050_cci_to_gcp_df.rds"))

