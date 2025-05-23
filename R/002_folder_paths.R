

netpath <- QSPworkflow::network_path()
netpath <- fs::path(netpath, "STUDIES")
sages_datapath <- fs::path(netpath, "DATA_MANAGEMENT", "SAGES-I", "DATA", "SOURCE", "CLEAN", "FROZENFILES", "adhoc_2023-12-18")

duke_datapath <- fs::path(netpath, "SAGES", "POSTED", "DATA", "SOURCE", "INTUIT")
gcp_datapath <- fs::path_home("DOCUMENTS", "DWORK", "SAGES", "POSTED", "DATA", "DERIVED", "HARMONIZATION")

r_objects <- here::here("R_objects")
if (!fs::dir_exists(r_objects)) {
  fs::dir_create(r_objects)
}
if (!fs::dir_exists(here::here("Reports"))) {
  fs::dir_create(here::here("Reports"))
}
if (!fs::dir_exists(here::here("Figures"))) {
  fs::dir_create(here::here("Figures"))
}


