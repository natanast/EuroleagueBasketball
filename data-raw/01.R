
rm(list = ls())
gc()

# libraries -----

library(rvest)
library(data.table)

# load data -----

euroleague <- read_html(
    "https://en.wikipedia.org/wiki/EuroLeague"
)

euroleague_finals <- "data-raw/data.xlsx" |> readxl::read_xlsx()


# clean data -----

# first dataset
euroleague <- euroleague |>
    html_elements(".wikitable.sortable") |>
    html_table()


df1 <- euroleague[[1]] |> setDT()


team_mapping <- c(
    "Barcelona" = "FC Barcelona",
    "EA7 Emporio Armani Milan" = "Olimpia Milano",
    "Fenerbahçe Beko" = "Fenerbahçe",
    "Maccabi Playtika Tel Aviv" = "Maccabi Tel Aviv",
    "Panathinaikos AKTOR" = "Panathinaikos",
    "Partizan Mozzart Bet" = "Partizan",
    "Virtus Segafredo Bologna" = "Virtus Bologna"
)


# Apply mapping to df1
df1$Team <- ifelse(df1$Team %in% names(team_mapping), team_mapping[df1$Team], df1$Team)



# merge
euroleague_basketball <- merge(df1, euroleague_finals, by = "Team", all.x = TRUE)


# Create a vector with missing countries for the teams that don't have one
missing_countries <- c("Germany", "Turkey", "Spain", "Serbia", "Israel", "Monaco", "Italy", "Greece", "France", "Lithuania")

# Add the missing countries to the 'Country' column based on the team names
euroleague_basketball[Team == "ALBA Berlin", Country := "Germany"]
euroleague_basketball[Team == "Baskonia", Country := "Spain"]
euroleague_basketball[Team == "Bayern Munich", Country := "Germany"]
euroleague_basketball[Team == "Crvena zvezda Meridianbet", Country := "Serbia"]
euroleague_basketball[Team == "LDLC ASVEL", Country := "France"]
euroleague_basketball[Team == "Paris Basketball", Country := "France"]


euroleague_basketball$FinalFour_Appearances <- ifelse(is.na(euroleague_basketball$FinalFour_Appearances), "0", euroleague_basketball$FinalFour_Appearances)
euroleague_basketball$Titles_Won <- ifelse(is.na(euroleague_basketball$Titles_Won), "0", euroleague_basketball$Titles_Won)
euroleague_basketball$Years_of_FinalFour_Appearances <- ifelse(is.na(euroleague_basketball$Years_of_FinalFour_Appearances), "", euroleague_basketball$Years_of_FinalFour_Appearances)
euroleague_basketball$Years_of_Titles_Won <- ifelse(is.na(euroleague_basketball$Years_of_Titles_Won), "", euroleague_basketball$Years_of_Titles_Won)


# save dataset
data.table::fwrite(euroleague_basketball, file = "euroleague_dataset.csv")
