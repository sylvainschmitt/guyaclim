#' Read sensor project
#' 
#' Read all campaigns for a project in a site.
#'
#' @param path char. path to the folder to read. 
#' @param sensor char. type of sensor.
#'
#' @returns table
#'
#' @examples
#' read_tomst_campaign(
#'   path = "data/Paracou_TOMST_ALT//",
#'   sensor = "TOMST"
#'  )
#' 
read_sensor_project <- function(
    path,
    sensor
) {
  if(!sensor %in% c("TOMST"))
    stop("Sensor not available yet!")
  metadata_file <- file.path(path, "metadata.xlsx")
  campaigns_file <- file.path(path, "campaigns.xlsx")
  if(sensor == "TOMST") read_campaign <- read_tomst_campaign
  campaigns <- readxl::read_xlsx(campaigns_file) |> 
    mutate(start = as.character(start),
           end = as.character(end))
  data <- tibble()
  for(i in 1:nrow(campaigns)) {
    data_campaign <- read_tomst_campaign(
      path = file.path(path, campaigns$campaign[i]),
      metadata = metadata_file,
      metadata_campaign = file.path(path, 
                                    paste0(campaigns$campaign[i], ".xlsx")),
      utc = campaigns$utc[i],
      start_date = as_date(campaigns$start[i]),
      stop_date = as_date(campaigns$end[i])
    )
    data <- bind_rows(data, data_campaign)
  }
  return(data)
}
