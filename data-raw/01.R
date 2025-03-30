
rm(list = ls())
gc()

# libraries -----

library(rvest)
library(data.table)

# load data -----

euroleague <- read_html(
    "https://en.wikipedia.org/wiki/EuroLeague"
)

euroleague_finals <- "data.xlsx" |> readxl::read_xlsx()


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
df <- merge(df1, euroleague_finals, by = "Team", all.x = TRUE)


# Create a vector with missing countries for the teams that don't have one
missing_countries <- c("Germany", "Turkey", "Spain", "Serbia", "Israel", "Monaco", "Italy", "Greece", "France", "Lithuania")

# Add the missing countries to the 'Country' column based on the team names
df[Team == "ALBA Berlin", Country := "Germany"]
df[Team == "Baskonia", Country := "Spain"]
df[Team == "Bayern Munich", Country := "Germany"]
df[Team == "Crvena zvezda Meridianbet", Country := "Serbia"]
df[Team == "LDLC ASVEL", Country := "France"]
df[Team == "Paris Basketball", Country := "France"]


df$FinalFour_Appearances <- ifelse(is.na(df$FinalFour_Appearances), "0", df$FinalFour_Appearances)
df$Titles_Won <- ifelse(is.na(df$Titles_Won), "0", df$Titles_Won)
df$Years_of_FinalFour_Appearances <- ifelse(is.na(df$Years_of_FinalFour_Appearances), "", df$Years_of_FinalFour_Appearances)
df$Years_of_Titles_Won <- ifelse(is.na(df$Years_of_Titles_Won), "", df$Years_of_Titles_Won)


# save dataset
write_csv(df, file = "euroleague_dataset.csv")
