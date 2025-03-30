# Euroleague Basketball

## Overview  
**EuroleagueBasketball** is an R package that provides data on Euroleague basketball teams, including their home cities, arenas, capacities, and historical performance in the Final Four. The dataset is useful for basketball analysts, sports enthusiasts, and data visualization projects.

## Installation  
You can install the development version of the package directly from GitHub:

```r
# Install devtools if not already installed
install.packages("devtools")

# Install the package from GitHub
devtools::install_github("natanast/EuroleagueBasketball")
````

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
