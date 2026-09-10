#' Read TOMST data
#' 
#' Read a TOMST data file.
#'
#' @param path char. path to the file to read. 
#' @param utc int. hour difference (e.g. -3 for FG).
#' @param start_date  date. starting reading date.
#' @param stop_date date. ending reading date.
#'
#' @returns table
#'
#' @examples
#' read_tomst_data("data/Paracou_TOMST_ALT/20240920/data_94223161_2024_09_20_0.csv",
#'                 utc = -3,
#'                 start_date = as_date("20230401"),
#'                 stop_date = as_date("20240920"))
#' 
read_tomst_data <- function(
    path,
    utc,
    start_date,
    stop_date
) {
  decimal <- read_delim(path, col_select = 5, col_names = F, show_col_types = FALSE,
                        delim = ";", col_types = list(X5 = col_character()), n_max = 1)$X5 %>% 
    gsub("[^[:punct:]]", "", .)
  if(str_length(decimal) == 0)
    decimal <- read_delim(path, col_select = 5, col_names = F,  show_col_types = FALSE,
                          delim = ";", col_types = list(X5 = col_character()), n_max = 2)$X5[2] %>% 
      gsub("[^[:punct:]]", "", .)
  read_delim(path, col_names = FALSE, locale = locale(decimal_mark = decimal),
             col_select = c(2, 4:7), show_col_types = FALSE) %>% 
    mutate(X2 = gsub(".", "-", X2, fixed = TRUE)) %>% 
    mutate(X2 = as.POSIXct(X2)) %>% 
    mutate(X2 = as_datetime(X2)) %>% 
    rename(date = X2, t_soil = X4, 
           t_surface = X5, t_air = X6, moisture = X7) %>% 
    mutate(date = date + utc*60*60) %>% 
    filter(as_date(date) >= start_date) %>% 
    filter(as_date(date) < stop_date)
}
