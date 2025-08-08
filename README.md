
<br> <img src="man/figures/logo_nobg.png" align="right" width="100"/>

# Euroleague Basketball <br> <br>

[![License:
MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## Overview

The `euroleague_basketball` dataset includes information sourced from
publicly available basketball records and Wikipedia.

It has been cleaned and structured for easy use in R.

## Installation

You can install the development version of the package directly from
GitHub:

``` r
# Install devtools if not already installed
install.packages("devtools")

# Install the package from GitHub
devtools::install_github("natanast/EuroleagueBasketball")

# Load data
library(EuroleagueBasketball)
data(euroleague_basketball)
```

## Dataset Description

The `euroleague_basketball` dataset includes the following columns:

| **Column** | **Description** |
|----|----|
| `Team` | Name of the basketball team |
| `Home city` | City where the team is based |
| `Arena` | Name of the home arena |
| `Capacity` | Seating capacity of the arena |
| `Season` | Current Euroleague season of the team |
| `Last season` | Last season the team participated |
| `Country` | Country where the team is based |
| `FinalFour_Appearances` | Number of times the team has reached the Final Four |
| `Titles_Won` | Number of Euroleague titles won |
| `Years_of_FinalFour_Appearances` | Years when the team reached the Final Four |
| `Years_of_Titles_Won` | Years when the team won the championship |

## About the data

**EuroleagueBasketball** is an R package that provides data on
Euroleague basketball teams, including their home cities, arenas,
capacities, and historical performance in the Final Four. The dataset is
useful for basketball analysis, sports enthusiasts, and data
visualization projects.

Here’s a quick look at the data:

``` r
library(EuroleagueBasketball)

head(euroleague_basketball, 5)
```

    ##                        Team       Home city                         Arena
    ## 1              Anadolu Efes        Istanbul Basketball Development Center
    ## 2                  Baskonia Vitoria-Gasteiz                   Buesa Arena
    ## 3             Bayern Munich          Munich                    SAP Garden
    ## 4 Crvena zvezda Meridianbet        Belgrade                Belgrade Arena
    ## 5          Dubai Basketball           Dubai               Coca-Cola Arena
    ##     Capacity Last season              Country FinalFour_Appearances Titles_Won
    ## 1 10,000[22]         6th               Turkey                     5          2
    ## 2 15,431[24]        14th                Spain                     0          0
    ## 3 11,500[25]         9th              Germany                     0          0
    ## 4 18,386[26]        10th               Serbia                     0          0
    ## 5     17,000           — United Arab Emirates                     0          0
    ##   Years_of_FinalFour_Appearances Years_of_Titles_Won
    ## 1   2000, 2001, 2019, 2021, 2022          2021, 2022
    ## 2                                                   
    ## 3                                                   
    ## 4                                                   
    ## 5
