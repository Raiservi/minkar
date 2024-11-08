#' Get information on a specific observation
#'
#' @export
#' @import httr plyr jsonlite
#' @param id a single id for a Minka observation record
#' @return a list with full details on a given record
#' @examples \dontrun{
#' m_obs <- get_minka_obs(query="Boops boops")
#' get_minka_obs_id(m_obs$id[1])
#' }
#'

 get_minka_obs_id <- function(id) {

  base_url <- "https://minka-sdg.org/"

  # Comprobar si es pot accedir a Minka

  if (httr::http_error(base_url)) { # Si l error es 400 o superior
                                    message("Minka API is unavailable.")
                                    return(invisible(NULL))
                                  }

  q_path <- paste("observations/", as.character(id), ".json", sep = "")

  df <- jsonlite::fromJSON(httr::content(httr::GET(base_url,path = q_path), as = "text"))

  return(df)
}


