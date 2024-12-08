% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_minka_obs_id.R
\name{get_minka_obs_id}
\alias{get_minka_obs_id}
\title{Get information on a specific observation}
\usage{
get_minka_obs_id(id)
}
\arguments{
\item{id}{a single id for a Minka observation record}
}
\value{
a list with full details on a given record
}
\description{
Get information on a specific observation
}
\examples{
\dontrun{
m_obs <- get_minka_obs(query="Boops boops")
get_minka_obs_id(m_obs$id[1])
}

}
