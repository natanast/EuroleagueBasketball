#' Euroleague Basketball Teams Data
#'
#' Cleaned information on Euroleague teams: home cities, arenas, capacities,
#' and historical performance (Final Four appearances and titles).
#'
#' @format A data.table with 20 rows and 12 variables:
#' \describe{
#'   \item{Team}{Character. Team name.}
#'   \item{`Home city`}{Character. Home city.}
#'   \item{Arena}{Character. Arena(s) used.}
#'   \item{Capacity}{Character. Stated capacity (may contain multiple values).}
#'   \item{`Last season`}{Character. Last EuroLeague season finish.}
#'   \item{Country}{Character. Country.}
#'   \item{FinalFour_Appearances}{Character. Number of Final Four appearances.}
#'   \item{Titles_Won}{Character. Number of EuroLeague titles.}
#'   \item{Years_of_FinalFour_Appearances}{Character. Years of Final Four appearances (comma-separated).}
#'   \item{Years_of_Titles_Won}{Character. Years of titles (comma-separated).}
#' }
#'
#' @source Wikipedia: EuroLeague page; merged with your curated finals file.
#'   See \url{https://en.wikipedia.org/wiki/EuroLeague} and your package's \code{data-raw/} scripts.
"euroleague_basketball"
