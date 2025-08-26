#' Euroleague Basketball Teams Data
#'
#' Cleaned information on Euroleague teams: home cities, arenas, capacities,
#' and historical performance (Final Four appearances and titles).
#'
#' @format A data frame with the following variables:
#' \describe{
#'   \item{Team}{Basketball team name (character).}
#'   \item{`Home city`}{City where the team is based (character).}
#'   \item{Arena}{Arena(s) used by the team (character).}
#'   \item{Capacity}{Seating capacity; kept as a character with commas (e.g., "10,000").}
#'   \item{`Last season`}{Team placement in the most recent completed season (character).}
#'   \item{Country}{Country where the team is located (character).}
#'   \item{FinalFour_Appearances}{Number of Final Four appearances (character, as scraped/cleaned).}
#'   \item{Titles_Won}{Number of Euroleague titles won (character, as scraped/cleaned).}
#'   \item{Years_of_FinalFour_Appearances}{Comma-separated years of Final Four appearances (character).}
#'   \item{Years_of_Titles_Won}{Comma-separated years of titles (character).}
#' }
#'
#' @source Wikipedia: EuroLeague page; merged with your curated finals file.
#'   See \url{https://en.wikipedia.org/wiki/EuroLeague} and your package's \code{data-raw/} scripts.
#'
#' @examples
#' data(euroleague_basketball)
#' head(euroleague_basketball)
#' # Example: teams per country
#' # if (requireNamespace("dplyr", quietly = TRUE)) {
#' #   dplyr::count(euroleague_basketball, Country) |>
#' #     dplyr::arrange(desc(n))
#' # }
"euroleague_basketball"
