#' Read TOMST campaign
#' 
#' Read a TOMST campaign folder.
#'
#' @param path char. path to the folder to read. 
#' @param metadata char. path to the site project metadata. 
#' @param metadata_campaign char. path to the campaign metadata.
#' @param utc int. hour difference (e.g. -3 for FG).
#' @param start_date  date. starting reading date.
#' @param stop_date date. ending reading date.
#'
#' @returns table
#'
#' @examples
#' read_tomst_campaign(
#'   path = "data/Paracou_TOMST_ALT/20240920/",
#'   metadata = "data/Paracou_TOMST_ALT/metadata.xlsx",
#'   metadata_campaign = "data/Paracou_TOMST_ALT/20240920.xlsx",
#'   utc = -3,
#'   start_date = as_date("20230401"),
#'   stop_date = as_date("20240920")
#'  )
#' 
read_tomst_campaign <- function(
    path,
    metadata,
    metadata_campaign,
    utc,
    start_date,
    stop_date
) {
  files <- list.files(path, pattern = "data", full.names = TRUE)
  names(files) <- list.files(path, pattern = "data", full.names = FALSE)
  data <- files %>% 
    lapply(read_tomst_data, utc, start_date, stop_date) %>% # to parrallelize
    bind_rows(.id = "file") %>% 
    separate(file, c("data", "sensornum"), convert = T) %>% 
    select(-data)
  metadata <- readxl::read_xlsx(metadata) %>% 
    select(TomstID, TomstSensorNum) %>% 
    rename(id = TomstID, sensornum = TomstSensorNum)
  metadata_campaign <- readxl::read_xlsx(metadata_campaign) %>% 
    rename_all(tolower) |> 
    mutate(field = as.character(field))
  data <- metadata %>% 
    left_join(metadata_campaign) %>% 
    full_join(data)
  return(data)
}
