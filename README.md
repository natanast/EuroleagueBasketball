# Euroleague Basketball  <img src="/inst/www/logo_nobg.png" align="right" width="130" />

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## Overview  
The `euroleague_basketball` dataset includes information sourced from publicly available basketball records and Wikipedia. 

It has been cleaned and structured for easy use in R.

## Installation  
You can install the development version of the package directly from GitHub:

```r
# Install devtools if not already installed
install.packages("devtools")

# Install the package from GitHub
devtools::install_github("natanast/EuroleagueBasketball")

# Load data
library(EuroleagueBasketball)
data(package = "EuroleagueBasketball")

````

## About the data
**EuroleagueBasketball** is an R package that provides data on Euroleague basketball teams, including their home cities, arenas, capacities, and historical performance in the Final Four. The dataset is useful for basketball analysis, sports enthusiasts, and data visualization projects.

## Dataset Description  
The `euroleague_basketball` dataset includes the following columns:

| **Column**                     | **Description**                                              |
|---------------------------------|--------------------------------------------------------------|
| `Team`                          | Name of the basketball team                                  |
| `Home city`                     | City where the team is based                                  |
| `Arena`                         | Name of the home arena                                        |
| `Capacity`                      | Seating capacity of the arena                                |
| `Season`                        | Current Euroleague season of the team                        |
| `Last season`                   | Last season the team participated                             |
| `Country`                       | Country where the team is based                              |
| `FinalFour_Appearances`         | Number of times the team has reached the Final Four          |
| `Titles_Won`                    | Number of Euroleague titles won                              |
| `Years_of_FinalFour_Appearances`| Years when the team reached the Final Four                   |
| `Years_of_Titles_Won`           | Years when the team won the championship                     |

Here’s a quick look at the data:

```r
head(euroleague_basketball[, .(Team, `Home city`, Arena, Capacity, `Last season`, Country, FinalFour_Appearances, Titles_Won)])
#>                     Team       Home city        Arena                          Capacity     Last season  Country               FinalFour_Appearances Titles_Won
#> 1:           Anadolu Efes      Istanbul         Basketball Development Center  10,000[22]    6th         Turkey                  5                      2
#> 2:               Baskonia      Vitoria-Gasteiz  Buesa Arena                    15,431[24]   14th         Spain                   0                      0
#> 3:          Bayern Munich      Munich           SAP Garden                     11,500[25]    9th         Germany                 0                      0
#> 4: Crvena zvezda Meridianbet   Belgrade         Belgrade Arena                 18,386[26]   10th         Serbia                  0                      0
#> 5:        Dubai Basketball     Dubai            Coca-Cola Arena                17,000         —          United Arab Emirates    0                      0
#> 6:           FC Barcelona      Barcelona        Palau Blaugrana                 7,585[23]    5th         Spain                  17                      2
````

