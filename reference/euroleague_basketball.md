# Euroleague Basketball Teams Data

Cleaned information on Euroleague teams: home cities, arenas,
capacities, and historical performance (Final Four appearances and
titles).

## Usage

``` r
euroleague_basketball
```

## Format

A data.table with 20 rows and 12 variables:

- Team:

  Character. Team name.

- `Home city`:

  Character. Home city.

- Arena:

  Character. Arena(s) used.

- Capacity:

  Character. Stated capacity (may contain multiple values).

- `Last season`:

  Character. Last EuroLeague season finish.

- Country:

  Character. Country.

- FinalFour_Appearances:

  Character. Number of Final Four appearances.

- Titles_Won:

  Character. Number of EuroLeague titles.

- Years_of_FinalFour_Appearances:

  Character. Years of Final Four appearances (comma-separated).

- Years_of_Titles_Won:

  Character. Years of titles (comma-separated).

## Source

Wikipedia: EuroLeague page; merged with your curated finals file. See
<https://en.wikipedia.org/wiki/EuroLeague> and this package's source
`data-raw/` scripts.
